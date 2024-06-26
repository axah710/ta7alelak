import 'package:flutter/material.dart';
import 'package:ta7alelak/views/doctors_view.dart';
import 'package:ta7alelak/views/medical_test_view.dart';
import 'package:ta7alelak/widgets/custom_home_list_tile.dart';

class HomeTiles extends StatelessWidget {
  const HomeTiles({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.05,
        ),
        CustomHomeListTile(
          leading: "assets/images/icon_doctor_1.png",
          title: "Doctors",
          buttonName: "View",
          subtitle: "Have an appointment today !",
          // sizedBoxWidth: 111,
          onTap: () {
            Navigator.pushNamed(context, DoctorsView.id);
          },
        ),
        SizedBox(
          height: screenHeight * 0.057,
        ),
        CustomHomeListTile(
          leading: "assets/images/icon_examination.png",
          title: "Your Medical Test",
          buttonName: "Set",
          subtitle: "Upload your medical test now !",
          // sizedBoxWidth: 6,
          onTap: () {
            Navigator.pushNamed(context, MedicalTestsView.id);
          },
        ),
      ],
    );
  }
}
