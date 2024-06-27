import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../actions/app_action.dart';
import '../actions/user_s_actions/change_name/change_name.dart';
import '../actions/user_s_actions/change_password/change_password.dart';
import '../actions/user_s_actions/change_picture/change_picture.dart';
import '../actions/user_s_actions/delete_user/delete_user.dart';
import '../models/user/app_user/app_user.dart';
import 'containers/app_user_container.dart';
import 'utils/customAlertDialogOneButton.dart';
import 'utils/customAlertDialogTwoButtons.dart';
import 'utils/extensions.dart';

class UpdateProfilePage extends StatefulWidget {
  const UpdateProfilePage({super.key});

  @override
  State<UpdateProfilePage> createState() => _UpdateProfilePageState();
}

class _UpdateProfilePageState extends State<UpdateProfilePage> {
  bool isObscure = true;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppUserContainer(
      builder: (BuildContext context, AppUser? user) {
        if (user == null) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          firstNameController.text = user.firstName;
          lastNameController.text = user.lastName;
        }
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  showDialog<CustomAlertDialogTwoButtons>(
                    context: context,
                    builder: (BuildContext context) {
                      return CustomAlertDialogTwoButtons(
                        title: 'Back?',
                        content: 'Changes that you want to make may not be saved.',
                        firstButtonText: 'no',
                        firstButtonColor: Colors.white30,
                        iconData: LineAwesomeIcons.exclamation_circle,
                        iconColor: Colors.grey,
                        onFirstButtonPressed: () {
                          Navigator.pop(context);
                        },
                        secondButtonText: 'yes',
                        secondButtonColor: Colors.grey,
                        onSecondButtonPressed: () {
                          context.state.user?.role == 'admin'
                              ? Navigator.pushReplacementNamed(context, '/profileAdminPage')
                              :
                          Navigator.pushReplacementNamed(context, '/profilePage');
                        },
                      );
                    },
                  );
                },
                icon: const Icon(LineAwesomeIcons.angle_left)),
            title: const Text('Edit Profile', style: TextStyle(color: Colors.black)),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      SizedBox(
                        width: 120,
                        height: 120,
                        child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.black12,
                            backgroundImage: user.pictureUrl != null ? NetworkImage(user.pictureUrl!) : null,
                            child: user.pictureUrl != null
                                ? null
                                : const Icon(LineAwesomeIcons.user, size: 60, color: Colors.black)),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0, // -- Position of the edit icon
                        child: GestureDetector(
                          onTap: () async {
                            final ImagePicker picker = ImagePicker();
                            final XFile? file =
                                await picker.pickImage(source: ImageSource.gallery, maxHeight: 1024, maxWidth: 1024);

                            if (file != null) {
                              context.dispatch(ChangePicture(file.path));
                            }
                          },
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.grey),
                            child: const Icon(LineAwesomeIcons.alternate_pencil, color: Colors.black, size: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),

                  // -- Form Fields
                  Form(
                    key: formKey,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          controller: firstNameController,
                          decoration:
                              const InputDecoration(label: Text('First Name'), prefixIcon: Icon(LineAwesomeIcons.user)),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: lastNameController,
                          decoration:
                              const InputDecoration(label: Text('Last Name'), prefixIcon: Icon(LineAwesomeIcons.user)),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: passwordController,
                          obscureText: isObscure,
                          validator: (String? value) {
                            const Pattern pattern =
                                r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$';
                            final RegExp regex = RegExp(pattern as String);
                            if (value!.isEmpty) {
                              return null;
                            } else if (!regex.hasMatch(value)) {
                              return 'Password must have at least: \n-one upper case\n-one lower case\n-one number\n-one special character.';
                            }
                            return null;
                          },
                          onChanged: (String value) {
                            formKey.currentState!.validate();
                          },
                          decoration: InputDecoration(
                            label: const Text('Password'),
                            prefixIcon: const Icon(Icons.fingerprint),
                            suffixIcon: IconButton(
                                icon: const Icon(LineAwesomeIcons.eye_slash),
                                onPressed: () {
                                  setState(() {
                                    isObscure = !isObscure;
                                  });
                                }),
                          ),
                        ),
                        const SizedBox(height: 60),
                        // -- Form Submit Button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (passwordController.text.isNotEmpty &&
                                  firstNameController.text.isNotEmpty &&
                                  lastNameController.text.isNotEmpty &&
                                  (firstNameController.text != user.firstName ||
                                      lastNameController.text != user.lastName)) {
                                if (formKey.currentState!.validate()) {
                                  context.dispatch(
                                      ChangePassword(newPass: passwordController.text, result: _onChangeNameResult));
                                  context.dispatch(ChangeName(
                                      newFirstName: firstNameController.text,
                                      newLastName: lastNameController.text,
                                      result: _onChangeNameResult));
                                }
                              } else if (passwordController.text.isNotEmpty) {
                                if (formKey.currentState!.validate()) {
                                  context.dispatch(ChangePassword(
                                      newPass: passwordController.text, result: _onChangePasswordResult));
                                }
                              } else if (firstNameController.text.isNotEmpty &&
                                  lastNameController.text.isNotEmpty &&
                                  (firstNameController.text != user.firstName ||
                                      lastNameController.text != user.lastName)) {
                                context.dispatch(ChangeName(
                                    newFirstName: firstNameController.text,
                                    newLastName: lastNameController.text,
                                    result: _onChangeNameResult));
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey, side: BorderSide.none, shape: const StadiumBorder()),
                            child: const Text('Save Changes', style: TextStyle(color: Colors.black)),
                          ),
                        ),

                        const SizedBox(height: 80),

                        // -- Created Date and Delete Button
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text.rich(
                              TextSpan(
                                text: 'Created on ',
                                style: const TextStyle(fontSize: 12),
                                children: [
                                  TextSpan(
                                      text: DateFormat('dd.MMM.yyyy').format(user.creationTime),
                                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12))
                                ],
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                showDialog<CustomAlertDialogTwoButtons>(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return CustomAlertDialogTwoButtons(
                                      title: 'Delete Profile?',
                                      content:
                                          'This action cannot be undone. Are you sure you want to delete your profile?',
                                      firstButtonText: 'yes',
                                      firstButtonColor: Colors.white30,
                                      iconData: LineAwesomeIcons.exclamation_circle,
                                      iconColor: Colors.grey,
                                      onFirstButtonPressed: () {
                                        context.dispatch(const DeleteUser());
                                        Navigator.pushReplacementNamed(context, '/entryPage');
                                      },
                                      secondButtonText: 'no',
                                      secondButtonColor: Colors.grey,
                                      onSecondButtonPressed: () {
                                        Navigator.pop(context);
                                      },
                                    );
                                  },
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.redAccent.withOpacity(0.1),
                                  elevation: 0,
                                  foregroundColor: Colors.red,
                                  shape: const StadiumBorder(),
                                  side: BorderSide.none),
                              child: const Text('Delete Profile'),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _onChangePasswordResult(AppAction action) {
    if (action is ChangePasswordSuccessful) {
      showDialog<CustomAlertDialogTwoButtons>(
        context: context,
        builder: (BuildContext context) {
          return CustomAlertDialogOneButton(
            title: 'Password Changed',
            content: 'Successfully changed your password.',
            buttonText: 'OK',
            buttonColor: Colors.grey,
            iconData: LineAwesomeIcons.check_circle,
            iconColor: Colors.green,
            onButtonPressed: () {
              Navigator.pop(context);
            },
          );
        },
      );
    } else if (action is ChangePasswordError) {
      showDialog<CustomAlertDialogTwoButtons>(
        context: context,
        builder: (BuildContext context) {
          return CustomAlertDialogOneButton(
            title: 'An error occurred',
            content: 'Please try again.',
            buttonText: 'OK',
            buttonColor: Colors.grey,
            iconData: LineAwesomeIcons.exclamation,
            iconColor: Colors.redAccent,
            onButtonPressed: () {
              Navigator.pop(context);
            },
          );
        },
      );
    }
  }

  void _onChangeNameResult(AppAction action) {
    if (action is ChangeNameSuccessful) {
      showDialog<CustomAlertDialogTwoButtons>(
        context: context,
        builder: (BuildContext context) {
          return CustomAlertDialogOneButton(
            title: 'Data Changed',
            content: 'Successfully changed your data.',
            buttonText: 'OK',
            buttonColor: Colors.grey,
            iconData: LineAwesomeIcons.check_circle,
            iconColor: Colors.green,
            onButtonPressed: () {
              Navigator.pop(context);
            },
          );
        },
      );
    } else if (action is ChangeNameError) {
      showDialog<CustomAlertDialogTwoButtons>(
        context: context,
        builder: (BuildContext context) {
          return CustomAlertDialogOneButton(
            title: 'An error occurred',
            content: 'Please try again.',
            buttonText: 'OK',
            buttonColor: Colors.grey,
            iconData: LineAwesomeIcons.exclamation,
            iconColor: Colors.redAccent,
            onButtonPressed: () {
              Navigator.pop(context);
            },
          );
        },
      );
    }
  }
}
