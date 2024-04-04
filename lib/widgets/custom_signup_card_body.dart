import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';
import 'package:ta7alelak/widgets/custom_signup_button.dart';
import 'package:ta7alelak/widgets/custom_signup_text_field.dart';

class CustomSignupCardBody extends StatelessWidget {
  const CustomSignupCardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
        // boxShadow: [
        //   BoxShadow(
        //     blurRadius: 40,
        //     color: Colors.grey.withOpacity(
        //       0.345,
        //     ),
        //     spreadRadius: 0,
        //     offset: const Offset(1, 1),
        //   ),
        // ],
      ),
      child: Center(
        child: SizedBox(
          height: 555,
          width: 321,
          child: Card(
            color: kColor,
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 14, right: 14),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 27,
                  ),
                  const Text(
                    "Signup",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 27,
                  ),
                  CustomSignupTextFormField(
                    enabledBorderSideColor: Colors.transparent,
                    hintText: 'Full Name',
                    fillColor: Colors.white.withOpacity(0.210),
                    hintColor: Colors.white.withOpacity(0.790),
                  ),
                  const SizedBox(
                    height: 27,
                  ),
                  CustomSignupTextFormField(
                    enabledBorderSideColor: Colors.transparent,
                    hintText: 'Email',
                    fillColor: Colors.white.withOpacity(0.210),
                    hintColor: Colors.white.withOpacity(0.790),
                  ),
                  const SizedBox(
                    height: 27,
                  ),
                  CustomSignupTextFormField(
                    enabledBorderSideColor: Colors.transparent,
                    hintText: 'Password',
                    fillColor: Colors.white.withOpacity(0.210),
                    hintColor: Colors.white.withOpacity(0.790),
                  ),
                  const SizedBox(
                    height: 27,
                  ),
                  CustomSignupTextFormField(
                    enabledBorderSideColor: Colors.transparent,
                    hintText: 'Re-type Password',
                    fillColor: Colors.white.withOpacity(0.210),
                    hintColor: Colors.white.withOpacity(0.790),
                  ),
                  const SizedBox(
                    height: 37,
                  ),
                  CustomSignupButton(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    buttonName: "Signup",
                    width: 210,
                    height: 55,
                    color: Colors.white.withOpacity(0.321),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
