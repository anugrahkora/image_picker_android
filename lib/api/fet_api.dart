import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:typed_data';

// class Api {
//   // final _dio = Dio();
//   final baseUrl =
//       'https://protected-retreat-53516.herokuapp.com/get_prediction';

//   Future fetchServiceApi(Uint8List imageFile) async {
//     final base64string = base64.encode(imageFile);

//     try {
//       final response = await http.post(
//         Uri.parse(baseUrl),
//         body: {
//           "image": base64string,
//         },
//       );

//       if (response.statusCode == 200) {
//         return response;
//       }
//     } on HttpException catch (e) {
//       Get.snackbar('Response', e.toString(),
//           snackPosition: SnackPosition.BOTTOM);
//     }

//     // Get.snackbar('Response', response.toString(),
//     //     snackPosition: SnackPosition.BOTTOM);

//     // Future.error(response.statusMessage);
//   }
// }

class Api {
  final _dio = Dio();
  var baseUrl = 'https://protected-retreat-53516.herokuapp.com/get_prediction';

  // ignore: missing_return
  Future fetchServiceApi(Uint8List imageFile) async {
    // var url = 'https://www.thecolorapi.com/id?rgb=184,54,6';
    // var url = 'https://www.thecolorapi.com/id?rgb=$red,$green,$blue';
    final headers = <String, String>{
      'Content-Type': 'application/json',
      "Access-Control-Allow-Origin": "*",
    };
    try {
      // Uint8List imagebytes = await imageFile.readAsBytes(); //convert to bytes
      String base64string =
          base64.encode(imageFile); //convert bytes to base64 string
      // print(base64string);
      // final response = await _dio.get("${baseUrl}i");
      // if (response.statusCode == 200) {
      //   return response;
      // }
      final response = await _dio.post(
        baseUrl,
        options: Options(headers: headers),
        data: {
          "image": base64string,
        },
      );
      if (response.statusCode == 200) {
        return response;
      }
      Get.snackbar('Response', response.statusCode.toString(),
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
      Get.snackbar('Response', e.message, snackPosition: SnackPosition.BOTTOM);
    }
  }
}
