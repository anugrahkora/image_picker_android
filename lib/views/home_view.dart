import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker_android/components/image_container.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_android/views/result_screen.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final ImagePicker picker = ImagePicker();

    // final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    AppBar appBar = AppBar(
      backgroundColor: Colors.black,
      elevation: 0.0,
      title: const Text('Covid19 Prediction'),
    );
    return Scaffold(
      appBar: appBar,
      body: Center(
          child: imageContainer(
        size,
        picker,
        (() async {
          final XFile? image = await picker.pickImage(
              source: ImageSource.gallery, imageQuality: 70);
          // ignore: use_build_context_synchronously
          if (image != null) {
            final bytes = await image.readAsBytes();
            // ignore: use_build_context_synchronously
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ResultViewScreen(
                  image: bytes,
                ),
              ),
            );
          } else {
            Get.snackbar('No action', 'No image selected',
                snackPosition: SnackPosition.BOTTOM);
          }
        }),
      )),
    );
  }
}
