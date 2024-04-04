import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';
import 'package:ta7alelak/widgets/booked_appointment_view_body.dart';

class BookedAppointmentView extends StatelessWidget {
  const BookedAppointmentView({super.key});
  static String id = kBookedAppointmentViewId;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: BookedAppointmentViewBody());
  }
}
