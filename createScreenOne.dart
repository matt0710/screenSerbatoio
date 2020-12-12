import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const PATH = 'images';
const pic1 = '$PATH/cantina.jpg';

class createScreenOne{
  final double elevation;
  final Color color;
  final double width;
  final VoidCallback navigate;
  final double containerWidth;
  final double containerHeight;
  final BoxShape shape;
  final Image imageURL;
  final Text title;
  final Text subtitle;

  createScreenOne({
    this.elevation = 3,
    @required this.color,
    this.width = 1.0,
    @required this.navigate,
    this.containerWidth = 50,
    this.containerHeight = 50,
    this.shape = BoxShape.circle,
    @required this.imageURL,
    @required this.title,
    @required this.subtitle,
});


  Widget screenOne(BuildContext){
    if(this.imageURL ==null) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Card(//definisco la forma
          elevation: 3,
          shape: StadiumBorder(
            //dimensions: EdgeInsets.all(10),
              side: BorderSide(
                color: this.color,
                width: this.width,
              )
          ),
          child: InkWell(
            customBorder: StadiumBorder(
                side: BorderSide(
                  color: this.color,
                  width: this.width,
                )
            ),
            onTap: () => this.navigate,// definisco l'evento che accade alla pressione: realisticamente dovrà reindirizzarmi allo screen
            //di Leo
            child: ListTile(
              title: this.title,

            ),
          ),
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Card( //definisco la forma
        elevation: this.elevation,
        shape: StadiumBorder(
            side: BorderSide(
              color: this.color,
              width: this.width,
            )
        ),
        child: InkWell( //definisco la forma dell'ombra che si genera alla pressione
          customBorder: StadiumBorder(
              side: BorderSide(
                color: this.color,
                width: this.width,
              )
          ),
          onTap: () => this.navigate,
          // definisco l'evento che accade alla pressione: realisticamente dovrà reindirizzarmi allo screen
          //di Leo
          child: ListTile(
            leading: Container(
              height: this.containerHeight,
              width: this.containerWidth,
              decoration: BoxDecoration(
                  shape: this.shape,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: this.imageURL == Image.asset("") ? Image.asset(pic1).image : this.imageURL.image,
                  )
              ),
            ),
            //Icon(Icons.access_alarm, color: Colors.orange[800], size: 20),//questo verrà sositutito dll'asset passato
            //Image.asset(_pic1),
            //dalla chiamata al server
            title: this.title,
            // anche questo
            //ovviamente la chiamata riempie sempre il vettore wineries, quindi si prendono i dati da li
            subtitle: this.subtitle,
          ),
        ),
      ),
    );
  }


}