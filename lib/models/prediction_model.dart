import 'package:equatable/equatable.dart';

class PredictionModel extends Equatable {
  final String? prediction;

  const PredictionModel({this.prediction});

  factory PredictionModel.fromJson(Map<String, dynamic> json) {
    return PredictionModel(
      prediction: json['prediction'] as String?,
    );
  }
  Map<String, dynamic> toJson() => {
        'prediction': prediction,
      };

  @override
  List<Object?> get props => [prediction];
}
