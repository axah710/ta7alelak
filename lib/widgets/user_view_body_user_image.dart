import 'package:flutter/material.dart';
import 'package:ta7alelak/helpers/constants.dart';

class UserViewBodyUserImage extends StatelessWidget {
  const UserViewBodyUserImage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Use MediaQuery to get the size of the screen
        double screenWidth = MediaQuery.of(context).size.width;

        // Calculate the size of the image container based on screen size
        double imageSize = screenWidth * 0.3; // 30% of screen width

        // Ensure the image size doesn't exceed a certain value
        imageSize = imageSize > 150 ? 150 : imageSize; // max size 150

        return Center(
          child: Container(
            width: imageSize,
            height: imageSize,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: kColor,
              ),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Container(
              width: imageSize,
              height: imageSize,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: Colors.transparent),
              ),
              child: Container(
                width: imageSize,
                height: imageSize,
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
          ),
        );
      },
    );
  }
}
