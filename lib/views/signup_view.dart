import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';
import 'package:ta7alelak/widgets/custom_card.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static String id = kSignupViewId;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignupCard(),
    );
  }
}
