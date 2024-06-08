// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ta7alelak/helpers/constants.dart';

class UserViewBodyUserDetails extends StatelessWidget {
  const UserViewBodyUserDetails({
    super.key,
    required this.currentUserEmail,
    required this.currentUserName,
  });
  final String currentUserEmail;
  final String currentUserName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          currentUserName,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: kColor,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        Text(
          currentUserEmail,
          style: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
