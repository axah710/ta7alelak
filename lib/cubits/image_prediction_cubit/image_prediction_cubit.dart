import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ta7alelak/models/prediction_model.dart';
import 'package:ta7alelak/services/add_image_service.dart';

part 'image_prediction_state.dart';

class ImagePredictionCubit extends Cubit<ImagePredictionState> {
  final ImagePicker _picker = ImagePicker();
  PredictionModel? predictionModel;

  ImagePredictionCubit() : super(ImagePredictionInitial());
  Future<void> imagePrediction({required pickedImage}) async {
    emit(
      ImagePredictionLoadingState(),
    );
    try {
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        pickedImage = image;

        final AddImageService addImageService = AddImageService(
          Dio(),
        );
        predictionModel = await addImageService.addImage(file: pickedImage);
        // Create an instance of the AddImageService class
        // Call the addImage method on the instance
        emit(
          ImagePredictionSucessState(
            predictionModel: predictionModel,
            pickedImage: pickedImage,
          ),
        );
      }
    } catch (e) {
      emit(
        const ImagePredictionFailureState(
          errorMessage: 'Oops There Was An Error',
        ),
      );
    }
  }
}
