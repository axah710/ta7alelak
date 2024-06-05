import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ta7alelak/helpers/constants.dart';
import 'package:ta7alelak/views/booked_appointment_view.dart';
import 'package:ta7alelak/widgets/custom_signup_button.dart';

class ThankYouViewCard extends StatelessWidget {
  const ThankYouViewCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Card(
      color: Colors.white,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.only(left: 14, right: 14),
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenHeight * 0.066,
                ),
                Icon(
                  MdiIcons.calendarStarFourPoints,
                  color: kColor,
                  size: 72,
                ),
                SizedBox(
                  height: screenHeight * 0.040,
                ),
                const Text(
                  "Thanks For Booking!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.040,
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
                SizedBox(
                  height: screenHeight * 0.08,
                ),
                CustomSignupButton(
                  onTap: () {
                    Navigator.pushNamed(context, BookedAppointmentView.id);
                  },
                  buttonName: "Go To Appointments",
                  width: screenWidth,
                  height: screenHeight * 0.06,
                  color: kColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
