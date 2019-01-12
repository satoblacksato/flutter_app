import 'package:flutter/material.dart';
import 'package:button_navigator_tab/pages/first.dart';
import 'package:button_navigator_tab/pages/second.dart';
import 'package:button_navigator_tab/pages/third.dart';

void main() => runApp(new MaterialApp(
  home: new MyNavigatorBotton()
));

class MyNavigatorBotton extends StatefulWidget {
  @override
  _MyNavigatorBottonState createState() => new _MyNavigatorBottonState();
 }
class _MyNavigatorBottonState extends State<MyNavigatorBotton> with SingleTickerProviderStateMixin {
TabController _controller;
 @override
 void initState() {
     super.initState();
     _controller= new TabController(length: 3, vsync: this);
   }
 
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
     appBar: new AppBar(
       title: new Text("Demo Navigator Bottom"),
       backgroundColor: Colors.teal,
     ),
     body: new TabBarView(
       children:<Widget>[new FirstTab(), new SecondTab(),new ThirdTab()],
       controller: _controller,
     ),
     bottomNavigationBar: new Material(
       color: Colors.blue,
       child:new TabBar(
         tabs:<Tab> [
            new Tab(icon: new Icon(Icons.alarm)),
            new Tab(icon: new Icon(Icons.watch)),
            new Tab(icon: new Icon(Icons.airplanemode_active))
         ],
         controller: _controller, 
       ),
     ),
   );
  }
}