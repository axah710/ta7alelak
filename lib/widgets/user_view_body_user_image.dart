import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';

class UserViewBodyUserImage extends StatelessWidget {
  const UserViewBodyUserImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 121,
      height: 123,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: kColor,
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Container(
        width: 121,
        height: 123,
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.transparent),
        ),
        child: Container(
          width: 121,
          height: 123,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            "assets/images/userimage.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
