import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      title: "Mi primer Aplicación",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Mi primer Aplicación"),
        ),
        body: new Container(
          child: new Center(
              child:new Directionality(
                    textDirection: TextDirection.ltr,
                    child:new Text("Hola Mundo")
              )
          )
        ) ,
      )
      )
    );
}