import 'package:flutter/material.dart';
import 'package:ta7alelak/widgets/get_started_text.dart';

class GetStartedStack extends StatelessWidget {
  const GetStartedStack({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/images/02.png",
          fit: BoxFit.fill,
          width: screenWidth,
          height: screenHeight * 0.57,
        ),
        const Positioned(
          top: 88,
          child: GetStartedText(),
        ),
      ],
    );
  }
}
