import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  home: MyAlert(),
));

class MyAlert extends StatefulWidget {
  @override
  _MyAlertState createState() => new _MyAlertState();
 }

enum DialogAction{
  yes,
  no
}

class _MyAlertState extends State<MyAlert> {
  String _inputValue="";

  void _alertResult(DialogAction action,BuildContext context){
    print("Tu seleccion es $action");
    Navigator.pop(context);
  }

  void _showAlert(String value){ //_ significa privado
    AlertDialog dialog=new AlertDialog(
      content: new Text(value),
      actions: <Widget>[
        new FlatButton(
          color: Colors.blue,
          textColor: Colors.white,
          onPressed:(){ _alertResult(DialogAction.yes,context);},
          child: new Text("SI"),
        ),
        new FlatButton(
           color: Colors.red,
          textColor: Colors.white,
          onPressed:(){ _alertResult(DialogAction.no,context);},
          child: new Text("NO"),
        )
      ],
    );
    showDialog(context: context, child: dialog);
  }

  void _onChanged(String value){
      setState(() {
              _inputValue=value;
            });
  }
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
     appBar: new AppBar(
       title: new Text("Alertas Dialog"),
       backgroundColor: Colors.black,
     ),
     body: new Container(
       child: new Center(
         child: new Column(
           children: <Widget>[
             new TextField(
               decoration: new InputDecoration(
                 hintText: "Ingrese contenido"
               ),
               onChanged:(String value) {
                 _onChanged(value);
               },
             ),
             new RaisedButton(
               child: new Text("ALERTA"),
               onPressed: (){
                 _showAlert(_inputValue);
               },
             )
           ],
         ),
       ),
     ),
   );
  }
}