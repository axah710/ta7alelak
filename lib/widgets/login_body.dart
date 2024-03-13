import 'package:flutter/material.dart';
import 'package:ta7alelak/widgets/custom_button.dart';
import 'package:ta7alelak/widgets/custom_text_form_field.dart';
import 'package:ta7alelak/widgets/google_button.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 11,
        right: 11,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 99,
          ),
          Image.asset("assets/images/undrawmedicineb2.png"),
          Text(
            "Welcome Back!",
            style: TextStyle(
              fontSize: 33,
              color: Colors.black.withOpacity(0.75),
            ),
          ),
          Text(
            "Please Login To Your Account",
            style: TextStyle(
              fontSize: 22,
              color: Colors.black.withOpacity(0.75),
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          CustomTextFormField(
            labelText: 'Email Address',
            myIcon: Icons.email,
          ),
          const SizedBox(
            height: 11,
          ),
          CustomTextFormField(
            labelText: 'Password',
            myIcon: Icons.lock,
          ),
          const SizedBox(
            height: 22,
          ),
          CustomButton(
            onTap: () {},
            buttonName: 'Login',
          ),
          const SizedBox(
            height: 11,
          ),
          const Text(
            "Forget Password?",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Dont't Have An Account?",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Text(
                "  Signup",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 14,
          ),
          Row(children: [
            Expanded(
              child: Divider(
                endIndent: 7,
                indent: 13,
                color: Colors.black.withOpacity(0.33),
              ),
            ),
            const Text("OR"),
            Expanded(
              child: Divider(
                endIndent: 13,
                indent: 7,
                color: Colors.black.withOpacity(0.33),
              ),
            ),
          ]),
          const SizedBox(
            height: 14,
          ),
          GoogleButton(
            onTap: () {},
            buttonName: 'Google',
          ),
        ],
      ),
    );
  }
}
