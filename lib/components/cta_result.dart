import 'package:flutter/material.dart';

Widget ctaResult(Size size, String textPrediction, String textProbability) {
  return Center(
    child: Container(
      alignment: Alignment.center,
      width: size.width * 0.9,
      height: size.height * 0.1,
      decoration: BoxDecoration(
          color: Colors.green.shade400,
          borderRadius: const BorderRadius.all(Radius.circular(10.0))),
      child: SizedBox(
        width: size.width * 0.5,
        height: size.height * 0.08,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Prediction',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                  ),
                ),
                Text(
                  'Probability',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  textPrediction,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '${(double.parse(textProbability) * 100).toStringAsFixed(1)}%',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
