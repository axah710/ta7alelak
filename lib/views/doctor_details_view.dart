import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';
import 'package:ta7alelak/widgets/doctor_details_view_body.dart';

class DoctorDetailsView extends StatelessWidget {
  const DoctorDetailsView({super.key});
  static String id = kDoctorDetailsViewId;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.88),
        body: const DoctorDetailsBody(),
      ),
    );
  }
}
