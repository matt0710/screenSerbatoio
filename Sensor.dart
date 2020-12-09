import 'package:flutter/cupertino.dart';
import 'package:screen1/Measurement.dart';

class Sensor {
  final String name;
  final String model;
  final String unit;
  final List<Measurement> measurement;

  Sensor({
    @required this.name,
    @required this.model,
    @required this.unit,
    @required this.measurement
  });
}