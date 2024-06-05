part of 'image_prediction_cubit.dart';

sealed class ImagePredictionState extends Equatable {
  const ImagePredictionState();

  @override
  List<Object> get props => [];
}

final class ImagePredictionInitial extends ImagePredictionState {}

final class ImagePredictionSucessState extends ImagePredictionState {
  final PredictionModel? predictionModel;
  final XFile? pickedImage;

  const ImagePredictionSucessState({required this.predictionModel , required this.pickedImage,});
}

final class ImagePredictionLoadingState extends ImagePredictionState {}

final class ImagePredictionFailureState extends ImagePredictionState {
  final String errorMessage;

  const ImagePredictionFailureState({required this.errorMessage});
}
