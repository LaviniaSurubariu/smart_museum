import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:smart_museum/presentation/utils/customTheme.dart';

import '../actions/user_s_actions/change_picture/change_picture.dart';
import '../actions/user_s_actions/delete_user/delete_user.dart';
import '../models/user/app_user/app_user.dart';
import 'containers/app_user_container.dart';
import 'utils/customAlertDialogTwoButtons.dart';
import 'utils/extensions.dart';

class UpdateProfilePage extends StatefulWidget {
  const UpdateProfilePage({super.key});

  @override
  State<UpdateProfilePage> createState() => _UpdateProfilePageState();
}

class _UpdateProfilePageState extends State<UpdateProfilePage> {
  bool isObscure = true;

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
        }
        return MaterialApp(
          theme: CustomTheme.themeData,
          home: Scaffold(
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
                          firstButtonColor: Colors.grey,
                          iconData: LineAwesomeIcons.exclamation_circle,
                          iconColor: Colors.grey,
                          onFirstButtonPressed: () {
                            Navigator.pop(context);
                          },
                          secondButtonText: 'yes',
                          secondButtonColor: Colors.redAccent,
                          onSecondButtonPressed: () {
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
                    // -- IMAGE with ICON
                    Stack(
                      children: [
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
                          right: 0,
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
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            initialValue: user.firstName,
                            decoration: const InputDecoration(
                                label: Text('First Name'), prefixIcon: Icon(LineAwesomeIcons.user)),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            initialValue: user.lastName,
                            decoration: const InputDecoration(
                                label: Text('Last Name'), prefixIcon: Icon(LineAwesomeIcons.user)),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            obscureText: isObscure,
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
                              onPressed: () => {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey, side: BorderSide.none, shape: const StadiumBorder()),
                              child: const Text('Save Changes', style: TextStyle(color: Colors.black)),
                            ),
                          ),
                          const SizedBox(height: 60),

                          // -- Created Date and Delete Button
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
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
                                        firstButtonColor: Colors.grey,
                                        iconData: LineAwesomeIcons.exclamation_circle,
                                        iconColor: Colors.grey,
                                        onFirstButtonPressed: () {
                                          context.dispatch(const DeleteUser());
                                          Navigator.pushReplacementNamed(context, '/entryPage');
                                        },
                                        secondButtonText: 'no',
                                        secondButtonColor: Colors.redAccent,
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
          ),
        );
      },
    );
  }
}
