// To parse this JSON data, do
//
//     final model = modelFromMap(jsonString);

import 'dart:convert';

Model modelFromMap(String str) => Model.fromMap(json.decode(str));

String modelToMap(Model data) => json.encode(data.toMap());

class Model {
  Model({
    required this.status,
    required this.prediction,
    required this.probability,
  });

  final String status;
  final String prediction;
  final String probability;

  factory Model.fromMap(Map<String, dynamic> json) => Model(
        status: json["status"],
        prediction: json["prediction"],
        probability: json["probability"],
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "prediction": prediction,
        "probability": probability,
      };
}
