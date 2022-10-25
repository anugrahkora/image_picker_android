import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

Widget ctaPickImage(Size size, ImagePicker picker, void Function() onTap) {
  return Center(
    child: BouncingWidget(
      duration: const Duration(milliseconds: 100),
      scaleFactor: 1.2,
      onPressed: onTap,
      child: Container(
        alignment: Alignment.center,
        width: size.width * 0.5,
        // height: 128.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black.withOpacity(0.7),
        ),
        child: const Text(
          'Pick image',
          style: TextStyle(color: Colors.white, fontSize: 17.0),
        ),
      ),
    ),
  );
}
