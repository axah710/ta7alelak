import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';

class DoctorDetailsViewBodyDetailsBookTimeCard extends StatelessWidget {
  const DoctorDetailsViewBodyDetailsBookTimeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: 7,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: ((context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 6.0,
              vertical: 4.0,
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 4.0,
            ),
            decoration: BoxDecoration(
              color: index == 2 ? kColor.withOpacity(0.55) : Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: kColor.withOpacity(0.21),
                  blurRadius: 4,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Center(
              child: Text(
                "${index + 5} : 00 AM",
                style: TextStyle(
                  color: index == 2 ? Colors.white : kColor.withOpacity(0.55),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
