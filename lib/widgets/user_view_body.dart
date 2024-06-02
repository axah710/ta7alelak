import 'package:flutter/material.dart';
import 'package:ta7alelak/widgets/user_view_body_options.dart';
import 'package:ta7alelak/widgets/user_view_body_user_details.dart';
import 'package:ta7alelak/widgets/user_view_body_user_image.dart';

class UserViewBody extends StatelessWidget {
  const UserViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.1,
        ),
        const UserViewBodyUserImage(),
        SizedBox(
          height: screenHeight * 0.02,
        ),
        const UserViewBodyUserDetails(),
        SizedBox(
          height: screenHeight * 0.07,
        ),
        const UserViewBodyOptions(),
      ],
    );
  }
}
