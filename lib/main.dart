import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp()
  ));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sateless widget"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Card(
              child: Text('Moee'),
            )
          ],
        ),
      ),
    );
  }

}