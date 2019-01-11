import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  home: MyTextField(),
));

class MyTextField extends StatefulWidget {
  @override
  _MyTextFieldState createState() => new _MyTextFieldState();
 }
class _MyTextFieldState extends State<MyTextField> {
String inputValue="";

  final TextEditingController controllerText= new TextEditingController();

  void onSubmitted(String value) {
    setState(() {
          inputValue=inputValue+"\n"+value;
          controllerText.text="";
        });
  }

  @override
  Widget build(BuildContext context) {
   return new Scaffold(
     appBar: new AppBar(
       title: new Text("EditText Widget"),
       backgroundColor: Colors.cyan,
     ),
     body: new Container(
       padding: const EdgeInsets.all(10.0),
       child : new Center(
         child: new Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: <Widget>[
             new TextField(
               decoration: new InputDecoration(hintText: "Ingrese texto aqui"),
               onSubmitted: (String value){
                 onSubmitted(value);
               },
               controller: controllerText,
             ),
              new Text(inputValue)
           ],
         ),
       )
     ),
   );
  }
}

