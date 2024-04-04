// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ta7alelak/helpers/constants.dart';

class UserViewBodyListTile extends StatelessWidget {
  const UserViewBodyListTile({
    super.key,
    required this.data,
    required this.icon,
    this.onTap,
  });
  final String data;
  final IconData icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        data,
        style: const TextStyle(
          color: kColor,
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
      ),
      leading: Container(
        height: 37,
        width: 37,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: kColor,
        ),
        child: GestureDetector(
          onTap: onTap,
          child: Icon(
            icon,
            color: Colors.white,
            size: 33,
          ),
        ),
      ),
    );
  }
}
