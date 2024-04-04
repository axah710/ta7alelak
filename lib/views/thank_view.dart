import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';
import 'package:ta7alelak/widgets/thank_you_view_card.dart';

class ThankView extends StatelessWidget {
  const ThankView({super.key});
  static String id = kThankViewId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 14, right: 14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.0321),
                      blurRadius: 4,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                height: 500,
                width: 321,
                child: const ThankYouViewCard(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
