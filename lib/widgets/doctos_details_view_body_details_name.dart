import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';

class DoctorDetailsViewBodyName extends StatelessWidget {
  const DoctorDetailsViewBodyName({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
          "Dr Tranquillie",
          style: TextStyle(
            color: kColor,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        );
  }
}