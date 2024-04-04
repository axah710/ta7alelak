import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';
import 'package:ta7alelak/widgets/custom_signup_button.dart';

class CustomHomeListTile extends StatelessWidget {
  const CustomHomeListTile(
      {super.key,
      required this.leading,
      required this.title,
      required this.buttonName,
      required this.subtitle,
      required this.sizedBoxWidth,
      required this.onTap});
  final String leading;
  final String title;
  final String buttonName;
  final String subtitle;
  final double sizedBoxWidth;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        leading,
      ),
      title: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: kColor,
              fontSize: 22,
            ),
          ),
          SizedBox(
            width: sizedBoxWidth,
          ),
          CustomSignupButton(
            onTap: onTap,
            buttonName: buttonName,
            width: 48,
            height: 28,
            color: kColor,
          ),
        ],
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ),
      ),
    );
  }
}
