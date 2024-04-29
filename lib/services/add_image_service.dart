import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';

class AddImageService {
  final Dio dio = Dio();

  Future<void> addImage({
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
        'http://192.168.1.5:8000/upload',
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
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      // Handle the error here
    }
  }
}