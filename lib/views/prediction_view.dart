import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';
import 'package:ta7alelak/models/prediction_model.dart';

class PredictionView extends StatelessWidget {
  const PredictionView({
    super.key,
    required this.pickedImage,
    required this.predictionModel,
  });
  static String id = kPredictionViewId;
  final String pickedImage;
  final PredictionModel? predictionModel;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Your Medical Test Result",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: screenHeight * 0.123,
            ),
            SizedBox(
              height: screenHeight * 0.3,
              width: screenWidth * 0.5,
              child: displayImage(pickedImage: pickedImage),
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            const Center(
              child: Text(
                "Prdeiction:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Text(
                predictionModel!.prediction ?? "No Prediction Available",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.57),
                ),
              ),
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
