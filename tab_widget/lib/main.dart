import 'package:flutter/material.dart';
import 'package:tab_widget/pages/home.dart';
import 'package:tab_widget/pages/video.dart';
import 'package:tab_widget/pages/contact.dart';


void main() => runApp(new MaterialApp(
  home: new MyTabWidget(),
));

class MyTabWidget extends StatefulWidget {
  @override
  _MyTabWidgetState createState() => new _MyTabWidgetState();
 }
class _MyTabWidgetState extends State<MyTabWidget> with SingleTickerProviderStateMixin{
  TabController _tabController;
  
  @override
  void initState() {
      // TODO: implement initState
      super.initState();
      _tabController=new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
   return new Scaffold(
     appBar: new AppBar(
       backgroundColor: Colors.red,
       title: new Text("Ejemplo tabs"),
       bottom: new TabBar(
         controller: _tabController,
         tabs: <Widget>[
           new Tab(icon: new Icon(Icons.home)),
           new Tab(icon: new Icon(Icons.ondemand_video)),
           new Tab(icon: new Icon(Icons.contacts)),
         ],
       ),
     ),
     body: new TabBarView(
       children: <Widget>[
          new Home(),new Video(),new Contact()
       ],
       controller:_tabController
     ),
   );
  }
}