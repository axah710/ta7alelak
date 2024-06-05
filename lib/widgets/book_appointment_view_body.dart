import 'package:flutter/material.dart';
import 'package:ta7alelak/widgets/book_appointment_view_body_buttons.dart';
import 'package:ta7alelak/widgets/book_appointment_view_body_card.dart';
import 'package:ta7alelak/widgets/book_appointment_view_body_dentity.dart';
import 'package:ta7alelak/widgets/book_appointment_view_body_doctor_info.dart';

class BookAppointmentViewBody extends StatelessWidget {
  const BookAppointmentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenHeight * 0.05,
            ),
            const Padding(
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
            const Center(
              child: BookAppointmentViewBodyCard(),
            ),
            const SizedBox(
              height: 27,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24, right: 24),
              child: BookAppointmentViewBodyButtons(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0125,
            )
          ],
        ),
      ),
    );
  }
}
