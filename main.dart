import 'package:flutter/material.dart';
import 'package:screen1/Measurement_chart.dart';
import 'package:screen1/Tank.dart';
import 'package:screen1/Sensor.dart';
import 'package:screen1/setPartOne.dart';
import 'package:screen1/setPartTwo.dart';
import 'package:screen1/setPartThree.dart';
import 'package:screen1/createScreenOne.dart';


import 'Measurement.dart';
import 'package:charts_flutter/flutter.dart' as charts;
const _PATH = 'images';
const _pic1 = '$_PATH/cantina.jpg';


void main() {
  runApp(MyApp());
}

class MyPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Vinificatore/stoccaggio"),
        backgroundColor: Color.fromARGB(255, 160, 25, 29),
      ),

      body: MyListView()._myListViewWithCustomIconAndCard(context),
    );
  }
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'assets',
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFEFEFEF)),
      home: MyPage(),
    );
  }
}

class MyListView extends StatelessWidget {

  Widget _myListViewWithCustomIconAndCard(BuildContext context) {

    final List<Measurement> data = [
      Measurement(createdat: 00.00, data: 15, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 01.00, data: 11, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 02.00, data: 17, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 03.00, data: 16, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 04.00, data: 14, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 05.00, data: 11, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 06.00, data: 14, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 07.00, data: 13, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 08.00, data: 15, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 09.00, data: 16, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 10.00, data: 11, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 11.00, data: 16, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 12.00, data: 17, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 13.00, data: 15, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 14.00, data: 15, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 15.00, data: 16, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 16.00, data: 23, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 17.00, data: 16, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 18.00, data: 12, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 19.00, data: 15, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 20.00, data: 14, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 21.00, data: 13, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 22.00, data: 11, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29))),
      Measurement(createdat: 23.00, data: 10, barColor: charts.ColorUtil.fromDartColor(Color.fromARGB(255, 160, 25, 29)))];

    //final tank = new Tank(label: 'TANK 1', code: 'A', flags: 1, capacity: 15.0, measurement: data, setpoint: 12.0,type: 'VINIFICATORE');
    final tank = new Tank(label: 'TANK 1', code: 'A', flags: 1, capacity: 15.0, measureUnit: "litri", measurement: data, setpoint: 12.0,type: 'VINIFICATORE');
    final List<Sensor> sensor_list = [
      Sensor(name: "sensor1", model: "aaa4", unit: "Celsius", measurement: data),
    ];

    return ListView(
      children: <Widget>[
          set_part_one(text: "Grafico andamento temperatura delle ultime 24h", fontStyle: FontStyle.italic, fontSize: 18, width: 10).part1(BuildContext),

          MeasurementChart(data: data, tank: tank),

          Column(
              children: <Widget>[
                Container(
                  height: 30,
                ),
                set_part_three(width: 20, alignment: Alignment.topLeft, text1: "- Codice serbatoio: ", text2: tank.code, fontStyle: FontStyle.italic, fontSize1: 20, fontSize2: 20).part3(BuildContext),

                Container(
                    height: 5
                ),

                set_part_three(width: 20, alignment: Alignment.topLeft, text1: "- Tipo: ", text2: tank.type, fontStyle: FontStyle.italic, fontSize1: 20, fontSize2: 20).part3(BuildContext),

                Container(
                    height: 5
                ),

                set_part_three(width: 20, alignment: Alignment.topLeft, text1: "- Sensore: ", text2: sensor_list[0].name, fontStyle: FontStyle.italic, fontSize1: 20, fontSize2: 20).part3(BuildContext),

                Container(
                    height: 5
                ),

                set_part_three(width: 20, alignment: Alignment.topLeft, text1: "- Capacità: ", text2: tank.capacity.toString() + " " + tank.measureUnit, fontStyle: FontStyle.italic, fontSize1: 20, fontSize2: 20).part3(BuildContext),

              ]
          ),

          Container(
              height: 20,
              decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        width: 1.5, color: Color.fromARGB(255, 160, 25, 29)),
                  )
              )
          ),

          Container(
            height: 20,
          ),

          Row(
            children: <Widget>[
              Container(
                width: 20, //spazia l'immagine da sinistra in modo da non tenerla attaccata allo schermo
              ),
              Container(
                child: Stack(
                  children: <Widget>[
                    Image.asset('images/serbatoio.jpg'),
                  ],
                ),
                width: 110,
              ),
              Container(
                width: 20,
              ),
              set_part_two(fontStyle: FontStyle.italic, fontSize1: 18, fontSize2: 25, measurementString: data[23].data.toString(), sensorUnit: sensor_list[0].unit.toString(), setpoint: tank.setpoint.toString()).part2(BuildContext),
            ],
          ),

          Container(
              height: 20,
              decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        width: 1.5, color: Color.fromARGB(255, 160, 25, 29)),
                  )
              )
          ),



          Container(
              height: 20
          ),

        createScreenOne(
          color: Color.fromARGB(255, 160, 25, 29),
          navigate: null,
          imageURL: null,
          title: Text("Altre misure", textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 20,
            ),
          ), subtitle: Text(""),
        ).screenOne(BuildContext),


      ],
      //),
      //],
    );
  }

  Widget build(BuildContext context) => Container();

}