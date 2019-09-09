import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Container(
        child: ListView(
        children: <Widget>[
          ListTile(title: Text('StateFull'),onTap: (){Navigator.pushNamed(context, '/home_statefull');},),
          ListTile(title: Text('Statless'),onTap: (){Navigator.pushNamed(context, '/stateles');},),
          ListTile(title: Text('Button'),onTap: (){Navigator.pushNamed(context, '/button');},),
          ListTile(title: Text('Tabs'),onTap: (){Navigator.pushNamed(context, '/tabs');},),
        ],
        ),
      ),
    );
  }
}