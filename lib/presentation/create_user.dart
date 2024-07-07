import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../actions/app_action.dart';
import '../actions/user_s_actions/login&create/create_user.dart';
import 'utils/custom_alert_dialog_one_button.dart';
import 'utils/custom_alert_dialog_two_buttons.dart';
import 'utils/custom_text_form_field.dart';
import 'utils/extensions.dart';

class CreateUserPage extends StatefulWidget {
  const CreateUserPage({super.key});

  @override
  State<CreateUserPage> createState() => _CreateUserPageState();
}

class _CreateUserPageState extends State<CreateUserPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();
  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();

  void _onResult(AppAction action) {
    if (action is CreateUserSuccessful) {
      Navigator.pushReplacementNamed(context, '/profilePage');
    } else if (action is CreateUserError) {
      final Object error = action.error;
      if (error is FirebaseAuthException && error.code == 'email-already-in-use') {
        showDialog<CustomAlertDialogTwoButtons>(
          context: context,
          builder: (BuildContext context) {
            return CustomAlertDialogTwoButtons(
              title: 'Account already exist',
              content: '',
              firstButtonText: 'Cancel',
              firstButtonColor: Colors.white30,
              iconData: LineAwesomeIcons.exclamation_circle,
              iconColor: Colors.grey,
              onFirstButtonPressed: () {
                Navigator.pop(context);
              },
              secondButtonText: 'Login',
              secondButtonColor: Colors.grey,
              onSecondButtonPressed: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, '/loginUser');
              },
            );
          },
        );
      } else {
        showDialog<CustomAlertDialogOneButton>(
          context: context,
          builder: (BuildContext context) {
            return CustomAlertDialogOneButton(
              title: 'Error',
              content: 'An error occurred. Please try again.',
              buttonText: 'OK',
              buttonColor: Colors.grey,
              iconData: LineAwesomeIcons.exclamation_circle,
              iconColor: Colors.grey,
              onButtonPressed: () {
                Navigator.pop(context);
              },
            );
          },
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign Up')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: CustomScrollView(
                  slivers: <Widget>[
                    SliverToBoxAdapter(
                      child: Form(
                        key: formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                          children: <Widget>[
                            const SizedBox(height: 64),
                            CustomTextFormField(
                              controller: firstName,
                              labelText: 'First Name',
                              icon: Icons.person,
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your first name.';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 24.0),
                            CustomTextFormField(
                              controller: lastName,
                              labelText: 'Last Name',
                              icon: Icons.person,
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your last name.';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 24.0),
                            CustomTextFormField(
                              controller: email,
                              labelText: 'Email',
                              icon: Icons.email,
                              validator: (String? value) {
                                const Pattern pattern =
                                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                                final RegExp regex = RegExp(pattern as String);
                                if (value == null || value.isEmpty || !regex.hasMatch(value)) {
                                  return 'Provide a valid email address.';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 24.0),
                            CustomTextFormField(
                              controller: password,
                              labelText: 'Password',
                              icon: Icons.lock,
                              validator: (String? value) {
                                const Pattern pattern =
                                    r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$';
                                final RegExp regex = RegExp(pattern as String);
                                if (value == null || value.isEmpty) {
                                  return 'Please enter password';
                                } else if (!regex.hasMatch(value)) {
                                  return 'Password must have at least: \n-one upper case\n-one lower case\n-one number\n-one special character.';
                                } else {
                                  return null;
                                }
                              },
                            ),
                            const SizedBox(height: 24.0),
                            CustomTextFormField(
                              controller: confirmPassword,
                              labelText: 'Confirm Password',
                              icon: Icons.lock,
                              validator: (String? value) {
                                if (value == null || value != password.text) {
                                  return 'Passwords do not match.';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 24.0),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black54, minimumSize: const Size(double.infinity, 50)),
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  context.dispatch(CreateUser(
                                      email: email.text,
                                      password: password.text,
                                      firstName: firstName.text,
                                      lastName: lastName.text,
                                      role: 'user',
                                      result: _onResult));
                                }
                              },
                              child: const Text('Sign up', style: TextStyle(color: Colors.white)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Already have an account? ',
                      style: TextStyle(color: Colors.black38),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/loginUser');
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
