import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen1/Measurement.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'Measurement.dart';
import 'Tank.dart';

class MeasurementChart extends StatelessWidget {
  final List<Measurement> data;
  final Tank tank;

  MeasurementChart({@required this.data, @required this.tank});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    List<charts.Series<Measurement, num>> misurazioni = [
      charts.Series(
          id: 'Misurazioni',
          data: data,
          domainFn: (Measurement m, _) => m.createdat,
          measureFn: (Measurement m, _) => m.data,
          colorFn: (Measurement m, _) => m.barColor)
    ];
    return SizedBox(
        height: 300,
        child: Container(
            decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1.5, color: Color.fromARGB(255, 160, 25, 29)),
                    )
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                borderOnForeground: false,
                shadowColor: Colors.white,
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: charts.LineChart(misurazioni, animate: true),
                      ),
                    ],
                  ),
                ),
              ),
            )
        )
    );
  }
}
