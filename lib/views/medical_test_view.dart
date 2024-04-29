import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ta7alelak/helpers/constants.dart';
import 'package:ta7alelak/services/add_image_service.dart';
import 'package:ta7alelak/widgets/custom_signup_button.dart';

class MedicalTestsView extends StatefulWidget {
  const MedicalTestsView({super.key});
  static String id = kMedicalTestsViewId;

  @override
  State<MedicalTestsView> createState() => _MedicalTestsViewState();
}

class _MedicalTestsViewState extends State<MedicalTestsView> {
  XFile? pickedImage;
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Medical Tests",
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 17.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 210,
                width: 210,
                child: CircleAvatar(
                  backgroundColor: kColor.withOpacity(0.66),
                  child: Image.asset(
                    "assets/images/icon_medical_check_up.png",
                    height: 149,
                    width: 149,
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const Text(
                textAlign: TextAlign.center,
                "Add your medical tests.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                textAlign: TextAlign.center,
                "A detailed health history helps the doctor diagnose you better .",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 123,
                width: 123,
                child: _displayImage(),
              ),
              const SizedBox(
                height: 16,
              ),
              CustomSignupButton(
                onTap: () async {
                  _pickImageFromGallery();

                  // _pickImageFromCamera();
                },
                buttonName: "Add Your Medical Tests",
                width: 210,
                height: 55,
                color: kColor.withOpacity(0.99),
              ),
              const SizedBox(
                height: 55,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _displayImage() {
    return pickedImage == null
        ? const Text(
            'No image selected.',
            textAlign: TextAlign.center,
          )
        : Image.file(
            File(
              pickedImage!.path,
            ),
          );
  }

  Future<void> _pickImageFromGallery() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        pickedImage = image;
      });
      final AddImageService addImageService = AddImageService();
      await addImageService.addImage(file: pickedImage);
      // Create an instance of the AddImageService class
      // Call the addImage method on the instance
    }
  }

  // Future<void> _pickImageFromCamera() async {
  //   final XFile? image = await _picker.pickImage(source: ImageSource.camera);
  //   if (image != null) {
  //     setState(() {
  //       _image = image;
  //     });
  //   }
  // }
}
