// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomSignupTextFormField extends StatelessWidget {
  CustomSignupTextFormField({
    this.obscureText = false,
    super.key,
    required this.hintText,
    required this.fillColor,
    required this.hintColor,
    required this.enabledBorderSideColor,
    // required this.onChanged,
  });
  String hintText;
  Function(String)? onChanged;
  bool? obscureText;
  Color fillColor;
  Color hintColor;
  Color enabledBorderSideColor;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!,
      validator: (data) {
        if (data!.isEmpty) {
          return "This field is required";
        }
      },
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(
          left: 12,
          right: 0,
          top: 0,
          bottom: 0,
        ),
        filled: true,
        fillColor: fillColor,
        hintStyle: TextStyle(
          color: hintColor,
        ),
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            7,
          ),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            7,
          ),
          borderSide: BorderSide(
            color: enabledBorderSideColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            7,
          ),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
