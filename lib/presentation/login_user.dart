import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../actions/app_action.dart';

import '../actions/user_s_actions/login&create/login.dart';
import 'utils/customTextFormFieldWithOnChange.dart';
import 'utils/customTheme.dart';
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
        Navigator.pushReplacementNamed(context, '/profilePage');
      } else if (action.user.role == 'user') {
        Navigator.pushReplacementNamed(context, '/anotherPage');
      }
    } else if (action is LoginError) {
      final Object error = action.error;
      if (error is FirebaseAuthException && error.code == 'invalid-credential') {
        showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return const AlertDialog(
              title: Text('Login error'),
              content: Text('Account not found or incorrect password.'),
            );
          },
        );
      } else {
        showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Login user error'),
              content: Text('${action.error}'),
            );
          },
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:CustomTheme.themeData,
      home: Scaffold(
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
                                  if (value == null || value.isEmpty || !value.contains('@')) {
                                    return 'Please provide a valid email address.';
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
                                  if (value == null || value.length < 6) {
                                    return 'Password must be at least 6 characters long.';
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
                                    context.dispatch(Login(email: email.text, password: password.text, result: _onResult));
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
      ),
    );
  }
}
