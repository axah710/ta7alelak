import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ta7alelak/widgets/doctor_details_view_body_book_button.dart';
import 'package:ta7alelak/widgets/doctor_details_view_body_details_book_date.dart';
import 'package:ta7alelak/widgets/doctor_details_view_body_details_book_time.dart';
import 'package:ta7alelak/widgets/doctos_details_view_body_details_description.dart';
import 'package:ta7alelak/widgets/doctos_details_view_body_details_name.dart';
import 'package:ta7alelak/widgets/doctos_details_view_body_details_specialization.dart';

class DoctorDetailsViewBodyDetails extends StatelessWidget {
  const DoctorDetailsViewBodyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const DoctorDetailsViewBodyName(),
        Row(
          children: [
            Icon(
              MdiIcons.heartPulse,
              color: Colors.red,
              size: 24,
            ),
            const SizedBox(
              width: 4,
            ),
            const DoctorDetailsViewBodySpecilization(),
          ],
        ),
        const SizedBox(
          height: 14,
        ),
        const DoctorDetailsViewBodyDescription(),
        const SizedBox(
          height: 14,
        ),
        Text(
          "Book Date",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.black.withOpacity(0.66),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const DoctorDetailsViewBodyDetailsBookDateCard(),
        const SizedBox(
          height: 8,
        ),
        Text(
          "Book Time",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.black.withOpacity(0.66),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const DoctorDetailsViewBodyDetailsBookTimeCard(),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.only(
            bottom: 8,
          ),
          child: DoctorDetailsViewBodyBookButton(),
        ),
      ],
    );
  }
}
