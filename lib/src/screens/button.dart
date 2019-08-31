import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  String flutterText = "";
  int index = 0;
  List<String> collections = ['Flutter', 'es', 'genial'];

  void onPressButton() {
    setState(() {
      flutterText = collections[index];
      index = index < 2 ? index +1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget App'),
        backgroundColor: Colors.orange[300],
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                flutterText,
                style: TextStyle(fontSize: 40),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              RaisedButton(
                child: Text('Update', style: TextStyle(color: Colors.white),),
                onPressed: onPressButton,
                color: Colors.deepOrangeAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}