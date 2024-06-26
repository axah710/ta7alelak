import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:ta7alelak/cubits/image_prediction_cubit/image_prediction_cubit.dart';
import 'package:ta7alelak/helpers/constants.dart';
import 'package:ta7alelak/helpers/showsnackbarmessage.dart';
import 'package:ta7alelak/models/prediction_model.dart';
import 'package:ta7alelak/views/prediction_view.dart';
import 'package:ta7alelak/widgets/custom_signup_button.dart';

class MedicalTestsView extends StatefulWidget {
  const MedicalTestsView({super.key});
  static String id = kMedicalTestsViewId;

  @override
  State<MedicalTestsView> createState() => _MedicalTestsViewState();
}

PredictionModel? predictionModel;

class _MedicalTestsViewState extends State<MedicalTestsView> {
  XFile? pickedImage;
  // final ImagePicker _picker = ImagePicker();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<ImagePredictionCubit, ImagePredictionState>(
        listener: (context, state) {
          if (state is ImagePredictionLoadingState) {
            isLoading = true;
          } else if (state is ImagePredictionSucessState) {
            isLoading = false;
            predictionModel = state.predictionModel;

            Navigator.push(
              // ignore: use_build_context_synchronously
              context,
              MaterialPageRoute(
                builder: (context) => PredictionView(
                  pickedImage: state.pickedImage!.path,
                  predictionModel: state.predictionModel,
                ),
              ),
            );
          } else if (state is ImagePredictionFailureState) {
            isLoading = false;
            showSnackBarMessage(
              context,
              state.errorMessage,
            );
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: isLoading,
            child: Scaffold(
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
                      CustomSignupButton(
                        onTap: () async {
                          await BlocProvider.of<ImagePredictionCubit>(context)
                              .imagePrediction(
                            pickedImage: pickedImage,
                          );

                          // await pickImageFromGallery();
                          // Navigator.push(
                          //   // ignore: use_build_context_synchronously
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => PredictionView(
                          //       pickedImage: pickedImage!.path,
                          //       predictionModel: predictionModel,
                          //     ),
                          //   ),
                          // );
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
            ),
          );
        },
      ),
    );
  }

  // Future<void> pickImageFromGallery() async {
  //   final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
  //   if (image != null) {
  //     setState(() {
  //       pickedImage = image;
  //     });
  //     final AddImageService addImageService = AddImageService(
  //       Dio(),
  //     );
  //     predictionModel = await addImageService.addImage(file: pickedImage);
  //     // Create an instance of the AddImageService class
  //     // Call the addImage method on the instance
  //   }
  // }

  // Future<void> _pickImageFromCamera() async {
  //   final XFile? image = await _picker.pickImage(source: ImageSource.camera);
  //   if (image != null) {
  //     setState(() {
  //       _image = image;
  //     });
  //   }
  // }
}
