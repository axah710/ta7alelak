import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';

class PredictionView extends StatelessWidget {
  const PredictionView({
    super.key,
    required this.pickedImage,
  });
  static String id = kPredictionViewId;
  final String pickedImage;
  

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Medical Test Result",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: screenHeight * 0.1,
            ),
            // const Center(
            //   child: Text("Your Medical Test:"),
            // ),
            // SizedBox(
            //   height: screenHeight * 0.05,
            // ),
            SizedBox(
              height: screenHeight * 0.3,
              width: screenWidth * 0.5,
              child: displayImage(pickedImage: pickedImage),
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            const Center(
              child: Text("Prdeiction:"),
            ),
            const Center(
              child: Text("Result Here"),
            ),
          ],
        ),
      ),
    );
  }
}

Widget displayImage({required pickedImage}) {
  return Image.file(
          File(
            pickedImage,
          ),
        );
}
