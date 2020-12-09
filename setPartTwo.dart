import 'dart:ui';
import 'package:flutter/cupertino.dart';

class set_part_two{
  final FontStyle fontStyle;
  final double fontSize1;
  final double fontSize2;
  final double width;
  final double height;
  final String measurementString;
  final String sensorUnit;
  final String setpoint;

  set_part_two({
    @required this.fontStyle,
    @required this.fontSize1,
    @required this.fontSize2,
    @required this.measurementString,
    @required this.sensorUnit,
    @required this.setpoint,
    this.width,
    this.height
  });

  Widget part2(BuildContext){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Ultima rilevazione: ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: this.fontStyle,
              fontSize: this.fontSize1,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            this.measurementString + " °" + this.sensorUnit,
            style: TextStyle(
              //fontWeight: FontWeight.bold,
              fontStyle: this.fontStyle,
              fontSize: this.fontSize2,
            ),
          ),
        ),

        Container(
            height: this.height
        ),

        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Setpoint: ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: this.fontStyle,
              fontSize: this.fontSize1,
            ),
          ),
        ),

        Align(
          alignment: Alignment.topLeft,
          child: Text(
            this.setpoint + " °" + this.sensorUnit,
            style: TextStyle(
              //fontWeight: FontWeight.bold,
              fontStyle: this.fontStyle,
              fontSize: this.fontSize2,
            ),
          ),
        ),
      ],
    );
  }

}