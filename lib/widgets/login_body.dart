import 'package:flutter/material.dart';
import 'package:ta7alelak/views/home_view.dart';
import 'package:ta7alelak/views/signup_view.dart';
import 'package:ta7alelak/widgets/custom_button.dart';
import 'package:ta7alelak/widgets/custom_text_form_field.dart';
import 'package:ta7alelak/widgets/google_button.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  // Future<UserCredential> signInWithGoogle() async {
  //   // Trigger the authentication flow
  //   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  //   // Obtain the auth details from the request
  //   final GoogleSignInAuthentication? googleAuth =
  //       await googleUser?.authentication;

  //   // Create a new credential
  //   final credential = GoogleAuthProvider.credential(
  //     accessToken: googleAuth?.accessToken,
  //     idToken: googleAuth?.idToken,
  //   );

  //   // Once signed in, return the UserCredential
  //   return await FirebaseAuth.instance.signInWithCredential(credential);
  // }

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
            onTap: () {
              Navigator.pushNamed(context, HomeView.id);
            },
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Dont't Have An Account?",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, SignupView.id);
                },
                child: const Text(
                  "  Signup",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
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
            onTap: () {
              // signInWithGoogle();
            },
            buttonName: 'Google',
          ),
        ],
      ),
    );
  }
}
