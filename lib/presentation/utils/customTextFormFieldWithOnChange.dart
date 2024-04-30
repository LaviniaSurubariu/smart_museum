import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customTextFormField.dart';

class CustomTextFormFieldWithOnChange extends CustomTextFormField {

  const CustomTextFormFieldWithOnChange({super.key, 
    required super.controller,
    required super.labelText,
    required super.icon,
    required super.validator,
    required this.onChanged, required bool obscureText,
  });
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: labelText == 'Password' ? true : false,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(icon),
        filled: true,
        fillColor: Colors.black12,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      validator: validator,
      onChanged: onChanged,
    );
  }
}