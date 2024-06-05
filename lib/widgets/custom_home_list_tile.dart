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
      required this.onTap});

  final String leading;
  final String title;
  final String buttonName;
  final String subtitle;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = MediaQuery.of(context).size.width;
        bool isSmallScreen = screenWidth < 600;

        return ListTile(
          leading: Image.asset(
            leading,
            width: isSmallScreen
                ? 45
                : 65, // Adjust image size based on screen width
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kColor,
                    fontSize: isSmallScreen
                        ? 20
                        : 25, // Adjust font size based on screen width
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                width: isSmallScreen ? 10 : 20,
              ), // Adjust spacing based on screen width
              CustomSignupButton(
                onTap: onTap,
                buttonName: buttonName,
                width: isSmallScreen
                    ? 45
                    : 50, // Adjust button size based on screen width
                height: isSmallScreen ? 25 : 30,
                color: kColor,
              ),
            ],
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(
              color: Colors.grey,
              fontSize: isSmallScreen
                  ? 15
                  : 20, // Adjust font size based on screen width
            ),
          ),
        );
      },
    );
  }
}
