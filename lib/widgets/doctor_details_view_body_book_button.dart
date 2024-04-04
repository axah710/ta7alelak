import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';
import 'package:ta7alelak/views/book_appointment._view.dart';
import 'package:ta7alelak/widgets/custom_signup_button.dart';

class DoctorDetailsViewBodyBookButton extends StatelessWidget {
  const DoctorDetailsViewBodyBookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomSignupButton(
        onTap: () {
          Navigator.pushNamed(context, BookAppointment.id);
        },
        buttonName: "Book Appointment",
        width: MediaQuery.of(context).size.width / 1.2,
        height: 60,
        color: kColor,
      ),
    );
  }
}
