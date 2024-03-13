import 'package:flutter/material.dart';

class GetStartedText extends StatelessWidget {
  const GetStartedText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Welcome To",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 33,
          ),
        ),
        Text(
          "       TA7ALELAK",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 33,
          ),
        ),
      ],
    );
  }
}
