import 'package:flutter/material.dart';
import 'package:ta7alelak/widgets/booked_appointment_view_body_card.dart';

class BookedAppointmentViewBody extends StatelessWidget {
  const BookedAppointmentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 14, right: 14),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Your Appointment",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
          SizedBox(
            height: 44,
          ),
          BookedAppointmentViewBodyCard(),
        ],
      ),
    );
  }
}
