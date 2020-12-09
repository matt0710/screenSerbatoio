import 'package:flutter/cupertino.dart';

import 'Measurement.dart';

class Tank{
  final String label;
  final String code;
  final int flags;
  final double capacity;
  final List<Measurement> measurement;
  final double setpoint;
  final String type;

  Tank({
    @required this.label,
    @required this.code,
    @required this.flags,
    @required this.capacity,
    @required this.measurement,
    @required this.setpoint,
    @required this.type
  });
}