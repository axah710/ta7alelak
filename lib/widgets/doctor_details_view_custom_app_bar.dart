import 'package:flutter/material.dart';

class DoctorDetailsCustomAppBar extends StatelessWidget {
  const DoctorDetailsCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.white,
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.keyboard_arrow_left_sharp,
              size: 33,
            ),
          ),
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.white,
          ),
          child: GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.favorite,
              size: 33,
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
