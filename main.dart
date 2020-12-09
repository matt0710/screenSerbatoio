import 'package:flutter/material.dart';
import 'package:screen1/Measurement_chart.dart';
import 'package:screen1/Tank.dart';
import 'package:screen1/Sensor.dart';

import 'Measurement.dart';
import 'package:charts_flutter/flutter.dart' as charts;

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

    final tank = new Tank(label: 'TANK 1', code: 'A', flags: 1, capacity: 15.0, measurement: data, setpoint: 12.0,type: 'VINIFICATORE');

    final List<Sensor> sensor_list = [
      Sensor(name: "sensor1", model: "aaa4", unit: "Celsius", measurement: data),
    ];

    return ListView(
      children: <Widget>[

        Row(
          children: <Widget>[
              Container(
                width: 20,
              ),
              Container(
                child: Text(
                  "\nGrafico andamento temperatura delle ultime 24h",
                  style: TextStyle(
                    //fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 18,
                    //color: Color.fromARGB(255, 160, 25, 29)
                  ),
                ),

              ),
          ]
        ),

        MeasurementChart(data: data, tank: tank),

        Container(
            height: 20 //spazia il measurement chart e l'immagine
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Ultima rilevazione: ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 18,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    data[23].data.toString() + " °" + sensor_list[0].unit,
                    style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 25,
                    ),
                  ),
                ),

                Container(
                    height: 20
                ),

                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Setpoint: ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 18,
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    tank.setpoint.toString() + " °" + sensor_list[0].unit,
                    style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
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
        Column(
          children: <Widget>[
            Container(
              height: 30,
            ),
            Row(
                children : <Widget> [
                  Container(
                    width: 20.0,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "- Codice tank: ",
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                          ),
                        ) ,
                      ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      tank.code,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                      ),
                    ) ,
                  ),
                   ]
                  ),

                  Container(
                      height: 5
                  ),

                  Row(
                    children: <Widget>[
                      Container(
                        width: 20.0,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "- Tipo: ",
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                          ),
                        ) ,
                      ),

                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          tank.type,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                          ),
                        ) ,
                      ),

                    ]
                  ),

                  Container(
                      height: 5
                  ),

                  Row(
                    children: <Widget>[
                      Container(
                        width: 20.0,
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "- Sensore: ",
                            style: TextStyle(
                              //fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontSize: 20,
                            ),
                          ) ,
                        ),

                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          sensor_list[0].name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                          ),
                        ) ,
                      ),

                    ]
                  ),

                  Container(
                    height: 5
                  ),

                  Row(
                  children: <Widget>[
                      Container(
                        width: 20.0,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "- Capacità: ",
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                          ),
                        ) ,
                      ),

                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        tank.capacity.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                        ),
                      ) ,
                    ),

                    ]
                  )

                ]
            ),

        Container(
          height: 20
        ),


        Padding(

          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Card(//definisco la forma
            elevation: 3,
            shape: StadiumBorder(
                //dimensions: EdgeInsets.all(10),
                side: BorderSide(
                  color: Color.fromARGB(255, 160, 25, 29),
                  width: 1.0,
                )
            ),
            child: InkWell(
              customBorder: StadiumBorder(
                  side: BorderSide(
                    color: Color.fromARGB(255, 160, 25, 29),
                    width: 1.0,
                  )
              ),
              onTap: () => print("Ciao"),// definisco l'evento che accade alla pressione: realisticamente dovrà reindirizzarmi allo screen
              //di Leo
              child: ListTile(
                title: Text(
                    "Altre misure",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                    ),

                ),
              ),
            ),
          ),
        )

          ],
        //),
      //],
    );
  }

  Widget build(BuildContext context) => Container();

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