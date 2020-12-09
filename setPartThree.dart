import 'dart:ui';
import 'package:flutter/cupertino.dart';

class set_part_three{
  final double width;
  final Alignment alignment;
  final String text1;
  final String text2;
  final FontStyle fontStyle;
  final double fontSize1;
  final double fontSize2;

  set_part_three({
    @required this.width,
    @required this.alignment,
    @required this.text1,
    @required this.text2,
    @required this.fontStyle,
    @required this.fontSize1,
    @required this.fontSize2,
  });

  Widget part3(BuildContext){
    return Row(
        children : <Widget> [
          Container(
            width: this.width,
          ),
          Align(
            alignment: this.alignment,
            child: Text(
              this.text1,
              style: TextStyle(
                //fontWeight: FontWeight.bold,
                fontStyle: this.fontStyle,
                fontSize: this.fontSize1,
              ),
            ) ,
          ),
          Align(
            alignment: this.alignment,
            child: Text(
              this.text2,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: this.fontStyle,
                fontSize: this.fontSize2,
              ),
            ) ,
          ),
        ]
    );
  }

}