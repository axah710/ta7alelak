import 'package:flutter/material.dart';
import 'package:ta7alelak/views/login_view.dart';
import 'package:ta7alelak/widgets/custom_button.dart';
import 'package:ta7alelak/widgets/get_started_stack.dart';

class GetStartedViewBody extends StatelessWidget {
  const GetStartedViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          const GetStartedStack(),
          const SizedBox(
            height: 18,
          ),
          const Divider(
            thickness: 2,
            indent: 75,
            endIndent: 75,
          ),
          const SizedBox(
            height: 75,
          ),
          CustomButton(
            buttonName: 'Get Started',
            onTap: () {
              Navigator.pushNamed(context, LoginView.id);
            },
          ),
        ],
      );
  }
}