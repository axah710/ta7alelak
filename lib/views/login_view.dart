import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';
import 'package:ta7alelak/widgets/login_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static String id = kLoginViewId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // It expresses the height of the keyboard so that it 
      //tells the screen not to take on a new size or change its shape ...
      // This property tells the Scaffold not to resize its body when the
      // keyboard appears. Normally, if not set or set to true, the scaffold's
      //body would be resized to avoid being obscured by the keyboard, which
      //can be useful for forms or other content where users need to see what
      //they type. Setting it to false is useful when the keyboard appearance
      //should not alter the size or position of the scaffold's body,
      // for example, when the important interactive elements are not
      //threatened by the keyboard overlaying the screen.
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: kColorsLinearGradient,
          ),
        ),
        child: const LoginBody(),
      ),
    );
  }
}
