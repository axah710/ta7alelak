// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';

// ignore: must_be_immutable
class GoogleButton extends StatelessWidget {
  GoogleButton({
    required this.onTap,
    super.key,
    required this.buttonName, required this.imageName,
  });
  String buttonName;
  VoidCallback? onTap;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: screenWidth * 0.4,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            128,
          ),
          color: kColor.withOpacity(0.66),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Image.asset(
                imageName,
                height: 33,
                width: 33,
              ),
            ),
            // const SizedBox(
            //   width: 22,
            // ),
            Text(
              buttonName,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              width: 7,
            ),
          ],
        ),
      ),
    );
  }
}
