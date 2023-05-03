import 'package:dental_control/utils/utils.dart';
import 'package:flutter/material.dart';

class CustomInput {
  static InputDecoration ligin = InputDecoration(
    constraints: const BoxConstraints(maxHeight: 50),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
    ),
    hintText: 'Correo',
    prefixIcon: const Icon(Icons.email_outlined),
    fillColor: CustomColors.colorLogin,
    filled: true,
  );

  static InputDecoration loginInputDecoratoin(
      {required String hint, required String label, required IconData icon, Widget? suffixIcon}) {
    return InputDecoration(
        constraints: const BoxConstraints(maxHeight: 50),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        hintText: hint,
        labelText: label,
        hintStyle: const TextStyle(color: Colors.grey),
        labelStyle: const TextStyle(color: Colors.grey),
        prefixIcon: Icon(icon, color: Colors.grey),
        suffixIcon: suffixIcon
        );
        
  }
}
