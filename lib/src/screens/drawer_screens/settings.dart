import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  static const String routeName = '/settings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('configuración'),),
      body: Container(
        child: Center(
          child: Text('Pantalla configuración'),
        ),
      ),
    );
  }
}