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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Text('I Love Flutter',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 30.0
                    ),
                  ),
                  Icon(Icons.favorite,
                    color: Colors.red,
                    size: 40,
                  )
                ],
              ),
            )
            )
          ],
        ),
      ),
    );
  }

}