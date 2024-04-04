import 'package:flutter/material.dart';
import 'package:ta7alelak/widgets/book_appointment_view_body_buttons.dart';
import 'package:ta7alelak/widgets/book_appointment_view_body_card.dart';
import 'package:ta7alelak/widgets/book_appointment_view_body_dentity.dart';
import 'package:ta7alelak/widgets/book_appointment_view_body_doctor_info.dart';

class BookAppointmentViewBody extends StatelessWidget {
  const BookAppointmentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 38),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BookAppointmentViewBodyIdentity(),
                BookAppointmentViewBodyDoctorInfo(),
                SizedBox(
                  height: 21,
                ),
              ],
            ),
          ),
          Center(
            child: BookAppointmentViewBodyCard(),
          ),
          SizedBox(
            height: 27,
          ),
          Padding(
            padding: EdgeInsets.only(left: 24, right: 24),
            child: BookAppointmentViewBodyButtons(),
          ),
        ],
      ),
    );
  }
}
