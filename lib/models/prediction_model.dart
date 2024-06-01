import 'package:equatable/equatable.dart';

class PredictionModel extends Equatable {
  final String? prediction;

  const PredictionModel({this.prediction});

  factory PredictionModel.fromJson(Map<String, dynamic> json) {
    return PredictionModel(
      prediction: json['error'] as String?,
    );
  }
  Map<String, dynamic> toJson() => {
        'error': prediction,
      };

  @override
  List<Object?> get props => [prediction];
}
