import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        Icon(Icons.airplanemode_active,size: 170.0, color: Colors.white),
        Text('Second tab', style: TextStyle(color: Colors.white))
      ]),
      )
    );
  }
}