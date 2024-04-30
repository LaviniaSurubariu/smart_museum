import 'package:flutter/material.dart';
import 'utils/extensions.dart';

class AnotherPage extends StatefulWidget {
  const AnotherPage({super.key});

  @override
  State<AnotherPage> createState() => _AnotherPage();
}

class _AnotherPage extends State<AnotherPage> {
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
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Bine ai venit!${context.state.user?.email ?? ''}',
                  style: const TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 20), // Add some spacing between the text and the button
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/helloPage');
                  },
                  child: const Text('Apasă-mă'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
