import 'package:flutter/material.dart';
import 'package:ta7alelak/widgets/custom_signup_button.dart';

class HomeStack extends StatelessWidget {
  const HomeStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          fit: BoxFit.fill,
          "assets/images/Group3484.png",
          width: MediaQuery.of(context).size.width,
        ),
        Positioned(
          top: 94.5,
          left: 50,
          child: Text(
            "Hi, Name",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade50,
              fontSize: 22,
            ),
          ),
        ),
        Positioned(
          top: 75,
          right: 33,
          child: Container(
            width: 72,
            height: 73,
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(57),
            ),
            child: Image.asset(
              "assets/images/icons8image50.png",
              color: Colors.white,
              // width: 13,
              // height: 13,
            ),
          ),
        ),
        Positioned(
          top: 191,
          left: 99,
          child: CustomSignupButton(
            color: Colors.white.withOpacity(0.321),
            buttonName: "View Your Profile",
            width: 149,
            height: 33,
            onTap: () {},
          ),
        )
      ],
    );
  }
}
