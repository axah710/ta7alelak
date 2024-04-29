import 'package:logging/logging.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';

// The `AddImageService` class is responsible for uploading an image file to a
// server using the Dio package in Flutter.

class AddImageService {
  final Dio _dio = Dio();
  final Logger _logger = Logger('AddImageService');

  Future<Response> addImage({
    required XFile? file,
  }) async {
    try {
      String fileName = file!.path.split('/').last;

      FormData formData = FormData.fromMap(
        {
          "file": await MultipartFile.fromFile(
            file.path,
            filename: fileName,
          ),
        },
      );

      Response response = await _dio.post(
        'http://192.168.1.5:8000/upload',
        data: formData,
        options: Options(
          method: 'POST',
          headers: {
            "content-length": "91",
          },
        ),
      );

      if (kDebugMode) {
        _logger.info(response.data);
      }

      return response;
    } catch (e) {
      if (kDebugMode) {
        _logger.severe(e.toString());
      }
      rethrow;
    }
  }
}
