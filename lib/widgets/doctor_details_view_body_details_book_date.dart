import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';

class DoctorDetailsViewBodyDetailsBookDateCard extends StatelessWidget {
  const DoctorDetailsViewBodyDetailsBookDateCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: 70,
      child: ListView.builder(
        itemCount: 27,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: ((context, index) {
          return Container(
            margin: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.02,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${index + 7}",
                    style: TextStyle(
                      color:
                          index == 2 ? Colors.white : kColor.withOpacity(0.55),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "DEC",
                    style: TextStyle(
                      color:
                          index == 2 ? Colors.white : kColor.withOpacity(0.55),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
