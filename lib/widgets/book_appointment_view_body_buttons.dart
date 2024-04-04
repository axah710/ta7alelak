import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';
import 'package:ta7alelak/views/thank_view.dart';
import 'package:ta7alelak/widgets/custom_signup_button.dart';

class BookAppointmentViewBodyButtons extends StatelessWidget {
  const BookAppointmentViewBodyButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomSignupButton(
          onTap: () {
            Navigator.pop(context);
          },
          buttonName: "Back",
          width: MediaQuery.of(context).size.width / 2.6,
          height: 55,
          color: kColor,
        ),
        CustomSignupButton(
          onTap: () {
            Navigator.pushNamed(context, ThankView.id);
          },
          buttonName: "Next",
          width: MediaQuery.of(context).size.width / 2.6,
          height: 55,
          color: kColor,
        ),
      ],
    );
  }
}
