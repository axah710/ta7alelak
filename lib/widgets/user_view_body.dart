import 'package:flutter/material.dart';
import 'package:ta7alelak/widgets/user_view_body_options.dart';
import 'package:ta7alelak/widgets/user_view_body_user_details.dart';
import 'package:ta7alelak/widgets/user_view_body_user_image.dart';

class UserViewBody extends StatelessWidget {
  const UserViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 88,
        ),
        UserViewBodyUserImage(),
        SizedBox(
          height: 20,
        ),
        UserViewBodyUserDetails(),
        SizedBox(
          height: 57,
        ),
        UserViewBodyOptions(),
      ],
    );
  }
}
