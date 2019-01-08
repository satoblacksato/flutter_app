import 'package:flutter/material.dart';

void main() => runApp(
  new MaterialApp(
    home: MyApp(),
  )
);

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final double iconSize=40.0;
    final TextStyle textCustomStyle=new TextStyle(color: Colors.blueGrey,fontSize: 30.0); 
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Stateless widget"),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
             new MyCard(
                      title: new Text("I love Usuario",style: textCustomStyle),
                      icon:new Icon(Icons.favorite,size: iconSize,color: Colors.redAccent)
              ),
             new MyCard(
                      title: new Text("Cuenta Facebook",style: textCustomStyle),
                      icon:new Icon(Icons.face,size: iconSize,color: Colors.blueAccent)
              ),
             new MyCard(
                      title: new Text("Buscar Wfi",style: textCustomStyle),
                      icon:new Icon(Icons.network_wifi,size: iconSize,color: Colors.greenAccent)
              )
            ],
          ),
        )
      )
    );
  }

}


class MyCard extends StatelessWidget{
  final Widget title;
  final Widget icon;

  MyCard({this.title,this.icon});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      padding: const EdgeInsets.only(bottom:1.0 ),
      child:new Card(
        child: new Container(
          padding: const EdgeInsets.all(20.0),
           child: Column(
               children:<Widget>[this.title,this.icon]
            ),
        )
       
      )
    );
  }

}
