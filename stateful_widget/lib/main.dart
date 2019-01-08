import 'package:flutter/material.dart';

void main() => runApp(
  new MaterialApp(
    home: MyButton(),
  )
);

class MyButton extends StatefulWidget{
  @override
  _MyButtonState createState()=>new _MyButtonState();
}
  
class _MyButtonState extends State<MyButton>{
String strRand="";
int index=0;
List<String> collections=['Hola','Como','Estas'];
 void onPressButton(){
    setState(() {
      strRand=collections[index];
      index = index < 2 ? index + 1 : 0;
    });
 }
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
        appBar: new AppBar(
          title: new Text("StateFul Widget"),
          backgroundColor: Colors.orangeAccent,
        ),
        body: new Container(
          child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(strRand,style: new TextStyle(fontSize: 40.0)),
              new Padding(padding: new EdgeInsets.all(10.0),),
              new RaisedButton(
                child: Text("ACTUALIZAR",style: new TextStyle(color:Colors.white),),
                color: Colors.blueAccent,
                onPressed: onPressButton,
              )

            ],
          )
        ),
        ),
    );
  }
}