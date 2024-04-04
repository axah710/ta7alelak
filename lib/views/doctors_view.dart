import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';
import 'package:ta7alelak/widgets/doctors_view_body.dart';

class DoctorsView extends StatelessWidget {
  const DoctorsView({super.key});
  static String id = kDoctorsViewId;

  @override
  Widget build(BuildContext context) {
    return const DoctorsViewBody();
  }
}
