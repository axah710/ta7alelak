import 'package:flutter/material.dart';

class DoctorsViewCustomAppBar extends StatelessWidget {
  const DoctorsViewCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 34,
        width: 34,
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
            size: 28.05,
          ),
        ),
      ),
      title: Text(
        "My Doctors",
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.black.withOpacity(0.57),
          fontSize: 24,
        ),
      ),
    );
  }
}
