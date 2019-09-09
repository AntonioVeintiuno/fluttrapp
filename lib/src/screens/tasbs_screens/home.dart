import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        Icon(Icons.alarm,size: 170.0, color: Colors.white),
        Text('Fist tab', style: TextStyle(color: Colors.white))
      ]),
      )
    );
  }
}