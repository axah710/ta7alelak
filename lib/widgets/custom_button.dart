// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({
    required this.onTap,
    super.key,
    required this.buttonName,
  });
  String buttonName;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: screenWidth * 0.7,
        height: screenHeight * 0.07,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            128,
          ),
          color: kColor,
        ),
        child: Center(
          child: Text(
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
