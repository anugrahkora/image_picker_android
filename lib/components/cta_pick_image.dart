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
          border: Border.all(color: Colors.black.withOpacity(0.3), width: 4),
          color: Color.fromARGB(255, 185, 185, 185),
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(21, 116, 116, 116),
                offset: Offset(2, 10),
                blurRadius: 10.0,
                spreadRadius: 12.0),
          ],
        ),
        child: const Text(
          'Pick image',
          style: TextStyle(
              color: Color.fromARGB(255, 70, 70, 70),
              fontSize: 19.0,
              fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}
