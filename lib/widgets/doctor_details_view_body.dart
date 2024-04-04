import 'package:flutter/material.dart';
import 'package:ta7alelak/widgets/doctor_details_view_image.dart';
import 'package:ta7alelak/widgets/doctos_details_view_body_details.dart';

class DoctorDetailsBody extends StatelessWidget {
  const DoctorDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          DoctorDetailsViewImage(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: DoctorDetailsViewBodyDetails(),
          ),
        ],
      ),
    );
  }
}
