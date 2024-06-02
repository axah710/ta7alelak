import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';
import 'package:ta7alelak/widgets/doctor_details_view_custom_app_bar.dart';
import 'package:ta7alelak/widgets/doctor_details_view_image_text.dart';

class DoctorDetailsViewImage extends StatelessWidget {
  const DoctorDetailsViewImage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: MediaQuery.of(context).size.height / 2.4,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/doctor_3.jpg",
          ),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: Container(
        // Above The Image ...
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              kColor.withOpacity(0.88),
              kColor.withOpacity(0),
              kColor.withOpacity(0),
              kColor.withOpacity(0),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: screenHeight * 0.057,
                left: screenWidth * 0.057,
                right: screenWidth * 0.057,
              ),
              child: const DoctorDetailsCustomAppBar(),
            ),
            const DoctorDetailsImageText(),
          ],
        ),
      ),
    );
  }
}
