import 'package:flutter/material.dart';

class DoctorDetailsViewBodySpecilization extends StatelessWidget {
  const DoctorDetailsViewBodySpecilization({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
              "Specilist Medicine",
              style: TextStyle(
                color: Colors.black.withOpacity(0.44),
                fontSize: 16,
              ),
            );
  }
}