import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';

class UserViewBodyUserDetails extends StatelessWidget {
  const UserViewBodyUserDetails({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const Column(
      children: [
        Text(
          "Ahmed Adel Hammad",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kColor,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        Text(
          "ahax710@gmail.com",
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
