import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAlertDialogOneButton extends StatelessWidget {
  const CustomAlertDialogOneButton({
    required this.title,
    required this.content,
    required this.buttonText,
    required this.buttonColor,
    required this.iconData,
    required this.iconColor,
    required this.onButtonPressed,
    Key? key,
  }) : super(key: key);
  final String title;
  final String content;
  final String buttonText;
  final Color buttonColor;
  final IconData iconData;
  final Color iconColor;
  final VoidCallback onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              iconData,
              size: 50,
              color: iconColor,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(fontSize: 20, color: Colors.black),
            ),
            const SizedBox(height: 20),
            Text(
              content,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14, color: Colors.black),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor,
                ),
                onPressed: onButtonPressed,
                child: Text(
                  buttonText,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
