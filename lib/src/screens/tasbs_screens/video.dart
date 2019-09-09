import 'package:flutter/material.dart';

class Video extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        Icon(Icons.watch_later,size: 170.0, color: Colors.white),
        Text('Third tab', style: TextStyle(color: Colors.white))
      ]),
      )
    );
  }
}