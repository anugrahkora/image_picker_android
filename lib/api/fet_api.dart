import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get/get.dart';

class ColorApi {
  final _dio = Dio();
  var baseUrl = 'https://www.thecolorapi.com/';

  // ignore: missing_return
  Future fetchServiceApi(File imageFile) async {
    // var url = 'https://www.thecolorapi.com/id?rgb=184,54,6';
    // var url = 'https://www.thecolorapi.com/id?rgb=$red,$green,$blue';

    try {
      final response = await _dio.get("${baseUrl}i");
      if (response.statusCode == 200) {
        return response;
      }
      Get.snackbar('Response', response.toString(),
          snackPosition: SnackPosition.BOTTOM);

      // Future.error(response.statusMessage);
    } on DioError catch (e) {
      if (e.response != null) {
        // print(e.response.data);
        // print(e.response.headers);
        // print(e.response.requestOptions);
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        // print(e.requestOptions);
        // print(e.message);
      }
      Get.snackbar('Response', 'failed', snackPosition: SnackPosition.BOTTOM);
    }
  }
}
