import 'package:flutter/material.dart';
import 'package:ta7alelak/widgets/get_started_text.dart';

class GetStartedStack extends StatelessWidget {
  const GetStartedStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/images/02.png",
          width: MediaQuery.of(context).size.width,
        ),
        const Positioned(
          top: 88,
          child: GetStartedText(),
        ),
      ],
    );
  }
}
