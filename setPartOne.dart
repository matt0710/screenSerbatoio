import 'dart:ui';
import 'package:flutter/cupertino.dart';

class set_part_one{

  final String text;
  final FontStyle fontStyle;
  final double fontSize;
  final double width;
  final double height;

  set_part_one({
    @required this.text,
    @required this.fontStyle,
    @required this.fontSize,
    this.width,
    this.height
  });


  Widget part1(BuildContext) {
    return Row(
      children: <Widget>[
        Container(
          width: this.width,
        ),
        Container(
          child: Text(
            "\n" + this.text,
            style: TextStyle(
              //fontWeight: FontWeight.bold,
              fontStyle: this.fontStyle,
              fontSize: this.fontSize,
              //color: Color.fromARGB(255, 160, 25, 29)
            ),
          ),

        )
      ],
    );
  }

}