import 'package:flutter/material.dart';

class DoctorDetailsViewBodyDescription extends StatelessWidget {
  const DoctorDetailsViewBodyDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Dr. Tranquillie, a seasoned specialist with 10 years' experience, treats 1.8K patients with personalized care and stays updated on medical advancements.",
      style: TextStyle(
        fontWeight: FontWeight.w700,
        color: Colors.black.withOpacity(0.66),
      ),
      textAlign: TextAlign.justify,
      // Fill the width...
    );
  }
}
