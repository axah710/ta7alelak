// ignore_for_file: public_member_api_docs, sort_constructors_first, body_might_complete_normally_nullable
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    this.obscureText = false,
    super.key,
    required this.labelText,
    required this.myIcon,
    required this.onChanged,
  });
  String labelText;
  IconData myIcon;
  Function(String)? onChanged;
  bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!,
      validator: (data) {
        if (data!.isEmpty) {
          return "This field is required";
        } else if (data.length < 6) {
          return "Provided data is to short";
        }
      },
      style: const TextStyle(
        color: Colors.black,
      ),
      onChanged: onChanged,
      decoration: InputDecoration(
        prefixIcon: Icon(myIcon),
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        label: Text(labelText),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            128,
          ),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
