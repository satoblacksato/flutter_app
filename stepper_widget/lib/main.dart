import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  home: MyStepperWidget(),
));

class MyStepperWidget extends StatefulWidget {

  @override
  _MyStepperWidgetState createState() => new _MyStepperWidgetState();
 }
class _MyStepperWidgetState extends State<MyStepperWidget> {
 int _currentStep=0;
 
 List<Step> mySteps=[
   new Step(title: new Text("PASO 1"),content: new Text("Aprender Flutter"),subtitle: new Text("Revisando el paso 1")),
   new Step(title: new Text("PASO 2"),content: new Text("Desarrollar App"),subtitle: new Text("Revisando el paso 2")),
   new Step(title: new Text("PASO 3"),content: new Text("Publicar App"),subtitle: new Text("Revisando el paso 3"))
 ];

  @override
  Widget build(BuildContext context) {
   return new Scaffold(
      appBar: new AppBar(
        title: new Text("Steps"),
        backgroundColor: Colors.orange,
      ),
      body:new Container(
        child: new Stepper(
          //Nos indica el paso actual del stepper
          currentStep: this._currentStep,
          steps: mySteps,
          type: StepperType.vertical,
          onStepTapped: (step){
            setState(() {
              _currentStep=step;              
            });
          },
          onStepContinue: (){
            setState(() {
              if(_currentStep< mySteps.length-1)
              {_currentStep++;}
              else
              {_currentStep=0;}
            });
          },
          onStepCancel: (){
            setState(() {
               if(_currentStep >0)
              {_currentStep--;}
              else
              {_currentStep=0;}              
            });
          },
        ),
      )
   );
  }
}
