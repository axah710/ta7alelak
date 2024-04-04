import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';
import 'package:ta7alelak/widgets/book_appointment_view_body.dart';

class BookAppointment extends StatelessWidget {
  const BookAppointment({super.key});
  static String id = kBookAppointmentViewId;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: BookAppointmentViewBody(),
    );
  }
}
