// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomSignupButton extends StatelessWidget {
  CustomSignupButton({
    required this.onTap,
    super.key,
    required this.buttonName,
    required this.width,
    required this.height,
    required this.color,
  });
  String buttonName;
  VoidCallback onTap;
  double width;
  double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            7,
          ),
          color: color,
        ),
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            maxLines: 1,
            buttonName,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
