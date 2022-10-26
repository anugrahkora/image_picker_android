import 'dart:io';
import 'dart:convert';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class Api {
  final _dio = Dio();
  var baseUrl = 'https://protected-retreat-53516.herokuapp.com/get_prediction';

  // ignore: missing_return
  Future fetchServiceApi(File imageFile) async {
    // var url = 'https://www.thecolorapi.com/id?rgb=184,54,6';
    // var url = 'https://www.thecolorapi.com/id?rgb=$red,$green,$blue';

    try {
      Uint8List imagebytes = await imageFile.readAsBytes(); //convert to bytes
      String base64string =
          base64.encode(imagebytes); //convert bytes to base64 string
      // print(base64string);
      // final response = await _dio.get("${baseUrl}i");
      // if (response.statusCode == 200) {
      //   return response;
      // }
      final response = await _dio.post(baseUrl, data: {
        "image": base64string,
      });
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
