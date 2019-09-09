import 'package:flutter/material.dart';


class BateryScreen extends StatelessWidget {
  static const String routeName = '/batery';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bateria'),),
      body: Container(
        child: Center(
          child: Text('Pantalla bateria'),
        ),
      ),
    );
  }
}