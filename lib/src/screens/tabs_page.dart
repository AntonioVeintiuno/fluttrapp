import 'package:first_app/src/screens/tasbs_screens/contact.dart';
import 'package:first_app/src/screens/tasbs_screens/home.dart';
import 'package:first_app/src/screens/tasbs_screens/video.dart';
import 'package:flutter/material.dart';

class MyTabs extends StatefulWidget {
  @override
  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Video Tabs'),
          backgroundColor: Colors.red,
          bottom: TabBar(tabs: <Widget>[
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.ondemand_video)),
            Tab(icon: Icon(Icons.contacts))
          ],),
        ),
        body: TabBarView(children: <Widget>[
          Home(),
          Video(),
          Contacts()
        ],),
      )
    );
  }
}
