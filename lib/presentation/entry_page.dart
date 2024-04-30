import 'package:flutter/material.dart';

class EntryPage extends StatelessWidget {
  const EntryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/entry page photo.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.white.withOpacity(0.3),
          ),
          Align(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: const Text(
                'Welcome to Smart museum',
                style: TextStyle(fontSize: 48, color: Colors.black), // adjust the style as needed
                textAlign: TextAlign.center,
                softWrap: true,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black54, minimumSize: const Size(double.infinity, 50)),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/loginUser');
                },
                child: const Text('Login', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}