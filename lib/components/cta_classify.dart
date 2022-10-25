import 'package:flutter/material.dart';

Widget ctaClassify(Size size, void Function() onTap) {
  return Center(
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: size.width * 0.8,
        height: 64.0,
        decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(30.0))),
        child: const Text(
          'Classify',
          style: TextStyle(color: Colors.white, fontSize: 17.0),
        ),
      ),
    ),
  );
}
