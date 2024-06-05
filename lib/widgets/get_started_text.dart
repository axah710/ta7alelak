import 'package:flutter/material.dart';

class GetStartedText extends StatelessWidget {
  const GetStartedText({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isSmallScreen = screenWidth < 600;

    return Column(
      children: [
        Text(
          "Welcome To",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: isSmallScreen
                ? 25
                : 35, // Adjust font size based on screen width
          ),
        ),
        Text(
          "       TA7ALELAK",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: isSmallScreen
                ? 25
                : 35, // Adjust font size based on screen width
          ),
        ),
      ],
    );
  }
}
