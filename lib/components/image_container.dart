import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'cta_pick_image.dart';

Widget imageContainer(Size size, ImagePicker picker, void Function() onTap) {
  return Container(
    width: size.width * 0.9,
    height: size.height * 0.7,
    decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(0.9), width: 3),
        color: Colors.grey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(30.0)),
    child: ctaPickImage(
      size,
      picker,
      onTap,
    ),
  );
}
