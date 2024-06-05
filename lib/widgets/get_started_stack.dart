import 'package:flutter/material.dart';
import 'package:ta7alelak/widgets/get_started_text.dart';

class GetStartedStack extends StatelessWidget {
  const GetStartedStack({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;
        double screenHeight = MediaQuery.of(context).size.height;
        bool isSmallScreen = screenWidth < 600;

        return Stack(
          children: <Widget>[
            Image.asset(
              "assets/images/02.png",
              fit: BoxFit.fill,
              width: screenWidth,
              height: screenHeight * 0.57,
            ),
            Positioned(
              top: screenHeight *
                  (isSmallScreen
                      ? 0.1
                      : 0.15), // Adjust position based on screen height
              child: const GetStartedText(),
            ),
          ],
        );
      },
    );
  }
}
