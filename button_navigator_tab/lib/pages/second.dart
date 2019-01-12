import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return new Scaffold(
    backgroundColor: Colors.red,
    body: new Container(
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Icon(Icons.watch,size: 160.0,color: Colors.white,),
            new Text("Segundo tab",style: new TextStyle(color: Colors.white),)
          ],
        ),
      ),
    ),
 );
 }
}