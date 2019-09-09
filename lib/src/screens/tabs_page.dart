import 'package:first_app/src/screens/tasbs_screens/contact.dart';
import 'package:first_app/src/screens/tasbs_screens/home.dart';
import 'package:first_app/src/screens/tasbs_screens/video.dart';
import 'package:flutter/material.dart';

class MyTabs extends StatefulWidget {
  @override
  _MyTabsState createState() => _MyTabsState(title: 'Tabs');
}

class _MyTabsState extends State<MyTabs> {
  final String title;

  _MyTabsState({@required this.title});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
          backgroundColor: Colors.blue,
        ),
        body: TabBarView(children: <Widget>[
          Home(),
          Video(),
          Contacts()
        ],),
        bottomNavigationBar: Material(
          color: Colors.blueAccent,
          child: TabBar(tabs: <Widget>[
            Tab(icon: Icon(Icons.alarm)),
            Tab(icon: Icon(Icons.watch_later)),
            Tab(icon: Icon(Icons.airplanemode_active))
          ],),
        ) ,
      )
    );
  }
}
