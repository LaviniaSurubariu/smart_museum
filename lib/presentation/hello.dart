import 'package:flutter/material.dart';
import 'utils/extensions.dart';

class HelloPage extends StatefulWidget {
  const HelloPage({super.key});

  @override
  State<HelloPage> createState() => _HelloPage();

}

class _HelloPage extends State<HelloPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bine ai venit!',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bine ai venit!'),
        ),
        body: Center(
          child: Text(
            'Bine ai venit!${context.state.user?.email ?? ''}',
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
