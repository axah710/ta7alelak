import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ta7alelak/helpers/constants.dart';
import 'package:ta7alelak/views/booked_appointment_view.dart';
import 'package:ta7alelak/widgets/custom_signup_button.dart';

class ThankYouViewCard extends StatelessWidget {
  const ThankYouViewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.only(left: 14, right: 14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 72,
            ),
            Icon(
              MdiIcons.calendarStarFourPoints,
              color: kColor,
              size: 72,
            ),
            const SizedBox(
              height: 32,
            ),
            const Text(
              "Thanks For Booking!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const Text(
              "You have successfully booked an appointment with DR Tranquillie December 2024 at 7:00 AM",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 77,
            ),
            CustomSignupButton(
              onTap: () {
                Navigator.pushNamed(context, BookedAppointmentView.id);
              },
              buttonName: "Go To Appointments",
              width: MediaQuery.of(context).size.width,
              height: 55,
              color: kColor,
            ),
          ],
        ),
      ),
    );
  }
}
