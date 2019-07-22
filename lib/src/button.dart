import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
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
              Text('antonio',
                style: TextStyle(fontSize: 40),
              ),
              RaisedButton(
                child: Text('Update'),
                onPressed: () {},
                color: Colors.deepOrangeAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}