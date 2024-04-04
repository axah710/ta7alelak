import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';
import 'package:ta7alelak/widgets/booked_appointment_view_body_card_details.dart';

class BookedAppointmentViewBodyCard extends StatelessWidget {
  const BookedAppointmentViewBodyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: kColor.withOpacity(0.0123),
                      blurRadius: 4,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                height: 543,
                width: 321,
                child: Card(
                  color: kColor.withOpacity(
                    0.77,
                  ),
                  elevation: 0,
                  child:const BookedAppointmentViewBodyCardDetails(),
                ),
              ),
            );
  }
}