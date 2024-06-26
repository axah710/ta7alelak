// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ta7alelak/widgets/custom_signup_button.dart';

class HomeStack extends StatelessWidget {
  const HomeStack({
    super.key,
    required this.currentUserName,
  });
  final String currentUserName;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    bool isSmallScreen = screenWidth < 600;

    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/images/Group3484.png",
          fit: BoxFit.fill,
          width: screenWidth,
          height: screenHeight * 0.45,
        ),
        Positioned(
          top: screenHeight * 0.1,
          left: screenWidth * 0.1,
          child: Text(
            "Hi, $currentUserName",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade50,
              fontSize: isSmallScreen ? 20 : 25,
            ),
          ),
        ),
        Positioned(
          top: screenHeight * 0.09,
          right: screenWidth * 0.1,
          child: Container(
            width: isSmallScreen ? 65 : 75,
            height: isSmallScreen ? 65 : 75,
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(57),
            ),
            child: Image.asset(
              "assets/images/icons8image50.png",
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          top: screenHeight * 0.22,
          left: screenWidth * 0.25,
          child: CustomSignupButton(
            color: Colors.white.withOpacity(0.321),
            buttonName: "View Your Profile",
            width: isSmallScreen ? 135 : 150,
            height: isSmallScreen ? 30 : 33,
            onTap: () {},
          ),
        )
      ],
    );
  }
}
