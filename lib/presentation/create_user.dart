import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:smart_museum/presentation/utils/customTextFormField.dart';
import '../actions/app_action.dart';
import '../actions/user_s_actions/login&create/create_user.dart';
import 'utils/customTheme.dart';
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
      Navigator.pushReplacementNamed(context, '/anotherPage');
    } else if (action is CreateUserError) {
      final Object error = action.error;
      if (error is FirebaseAuthException && error.code == 'email-already-in-use') {
        showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Account already exits'),
              content: Text('${error.message}'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, '/loginUser');
                  },
                  child: const Text('Login'),
                ),
              ],
            );
          },
        );
      } else {
        showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Create user error'),
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
      theme: CustomTheme.themeData,
      home: Scaffold(
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
                                  if (value == null || value.isEmpty || !value.contains('@')) {
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
                                  if (value == null || value.length < 6) {
                                    return 'Password must be at least 6 characters.';
                                  }
                                  return null;
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
      ),
    );
  }
}
