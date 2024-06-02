import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ta7alelak/models/prediction_model.dart';

class AddImageService {
  final Dio dio;

  AddImageService(this.dio);

  Future<PredictionModel> addImage({
    required XFile? file,
  }) async {
    try {
      String fileName = file!.path.split('/').last;
      //Get the file name by splitting the file path and taking the last part.

      Map<String, dynamic> headers = {};
      // Create an empty headers map.

      headers.addAll({"content-length": "91"});
      // Add a key-value pair to the headers map with the key
      // "content-length" and the value "91".

      FormData formData = FormData.fromMap(
        {
          "file": await MultipartFile.fromFile(
            file.path,
            filename: fileName,
          ),
        },
      );
      // Create a FormData object from a map containing the file data.

      Response response = await dio.post(
        "https://mmaarrccoo0-t7alelak.hf.space/upload",
        data: formData,
        options: Options(
          method: 'POST',
          headers: headers,
        ),
      );
      // Send a POST request to the specified URL with the form data and headers.

      if (kDebugMode) {
        print(response.data);
      }
      // If the app is in debug mode, print the response data.
      // return response.data;
      PredictionModel predictionModel = PredictionModel.fromJson(response.data);
      return predictionModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data["error"] ??
          "Oops Threre's An Error, Try Again Later !!!";
      throw Exception(errorMessage);
      // In this case, the error message is going to be displayed from the
      // response data, as shown in the API. If the response has an error,
      // such as a 5XX "Server Error", the response from the API is going to be
      // null. Therefore, we wrote the second code to responed
      // in the case of "Dio Exceptions" ...
    } catch (e) {
      throw Exception("Oops Threre's An Error, Try Again Later !!!");
      // In this case, if we encounter any another unexpected error type , we
      // can handel and deal with it automatically using these code lines
      //to increase saftey while working ...
    }
  }
}
