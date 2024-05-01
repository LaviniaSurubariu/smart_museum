import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customAlertDialogOneButton.dart';

class CustomAlertDialogTwoButtons extends CustomAlertDialogOneButton {
  const CustomAlertDialogTwoButtons({
    required super.title,
    required super.content,
    required String firstButtonText,
    required Color firstButtonColor,
    required super.iconData,
    required super.iconColor,
    required VoidCallback onFirstButtonPressed,
    required this.secondButtonText,
    required this.secondButtonColor,
    required this.onSecondButtonPressed,
    super.key,
  }) : super(
          buttonText: firstButtonText,
          buttonColor: firstButtonColor,
          onButtonPressed: onFirstButtonPressed,
        );
  final String secondButtonText;
  final Color secondButtonColor;
  final VoidCallback onSecondButtonPressed;

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
              style: const TextStyle(fontSize: 22, color: Colors.black),
            ),
            const SizedBox(height: 20),
            Text(
              content,
              style: const TextStyle(fontSize: 12, color: Colors.black),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: buttonColor,
                      ),
                      onPressed: onButtonPressed,
                      child: Text(
                        buttonText,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: secondButtonColor,
                      ),
                      onPressed: onSecondButtonPressed,
                      child: Text(
                        secondButtonText,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
