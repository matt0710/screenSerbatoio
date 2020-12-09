import 'package:flutter/cupertino.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'Sensor.dart';
import 'Tank.dart';

class Measurement{
  final double data;
  final double createdat;
  final Sensor sensor;
  final Tank tank;
  final charts.Color barColor;

  Measurement({
    @required this.data,
    @required this.createdat,
    @required this.sensor,
    @required this.tank,
    @required this.barColor
  });
}