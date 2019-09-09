import 'package:flutter/material.dart';

class BateryScreen extends StatefulWidget {
  @override
  _BateryScreenState createState() => _BateryScreenState();
}

class _BateryScreenState extends State<BateryScreen> {
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