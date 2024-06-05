import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta7alelak/cubits/auth_cubit/auth_cubit.dart';
import 'package:ta7alelak/widgets/custom_signup_button.dart';

class HomeStack extends StatelessWidget {
  const HomeStack({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    bool isSmallScreen = screenWidth < 600;
    String userName = BlocProvider.of<AuthCubit>(context).userName!;

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
            "Hi, $userName",
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
