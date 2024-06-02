import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';
import 'package:ta7alelak/widgets/doctors_view_custom_app_bar.dart';
import 'package:ta7alelak/widgets/doctors_view_list_view_builder.dart';

class DoctorsViewBody extends StatelessWidget {
  const DoctorsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: kColorsLinearGradient,
            ),
          ),
          child: const SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: Column(
                children: [
                  DoctorsViewCustomAppBar(),
                  DoctorsViewListViewBuilder(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
