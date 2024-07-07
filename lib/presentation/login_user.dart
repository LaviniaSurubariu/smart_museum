import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import '../actions/app_action.dart';

import '../actions/user_s_actions/get_artworks_with_style/get_artworks_with_style.dart';
import '../actions/user_s_actions/login&create/login.dart';
import 'utils/customAlertDialogOneButton.dart';
import 'utils/customTextFormFieldWithOnChange.dart';
import 'utils/extensions.dart';

class LoginUserPage extends StatefulWidget {
  const LoginUserPage({super.key});

  @override
  State<LoginUserPage> createState() => _LoginUserPageState();
}

class _LoginUserPageState extends State<LoginUserPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  void _onResult(AppAction action) {
    if (action is LoginSuccessful) {
      if (action.user.role == 'admin') {
        Navigator.pushReplacementNamed(context, '/adminHomeScreenPage');
      } else if (action.user.role == 'user') {
        context.dispatch(const GetArtworksWithStyle());
        Navigator.pushReplacementNamed(context, '/homeScreenPage');
      }
    } else if (action is LoginError) {
      final Object error = action.error;
      if (error is FirebaseAuthException && error.code == 'invalid-credential') {
        showDialog<CustomAlertDialogOneButton>(
          context: context,
          builder: (BuildContext context) {
            return CustomAlertDialogOneButton(
              title: 'Login error',
              content: 'Account not found or incorrect password',
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
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Login User'),
      ),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(height: 180),
                            CustomTextFormFieldWithOnChange(
                              controller: email,
                              obscureText: false,
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
                              onChanged: (String value) {
                                formKey.currentState!.validate();
                              },
                            ),
                            const SizedBox(height: 24.0),
                            CustomTextFormFieldWithOnChange(
                              controller: password,
                              obscureText: true,
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
                                }
                                return null;
                              },
                              onChanged: (String value) {
                                formKey.currentState!.validate();
                              },
                            ),
                            const SizedBox(height: 24),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black54, minimumSize: const Size(double.infinity, 50)),
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  context
                                      .dispatch(Login(email: email.text, password: password.text, result: _onResult));
                                }
                              },
                              child: const Text('Login', style: TextStyle(color: Colors.white)),
                            ),
                            const SizedBox(height: 16),
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
                      "Don't have an account? ",
                      style: TextStyle(color: Colors.black38),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/createUser');
                      },
                      child: const Text(
                        'Sign up',
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
