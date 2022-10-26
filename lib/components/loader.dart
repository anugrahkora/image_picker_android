import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget loader(
  Size size,
) {
  return Center(
    child: Shimmer.fromColors(
      baseColor: Colors.grey.withOpacity(0.3),
      highlightColor: Colors.grey.withOpacity(0.1),
      enabled: true,
      child: Container(
          alignment: Alignment.center,
          width: size.width * 0.9,
          height: size.height * 0.1,
          decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: const CircularProgressIndicator(
            color: Colors.white,
          )),
    ),
  );
}
