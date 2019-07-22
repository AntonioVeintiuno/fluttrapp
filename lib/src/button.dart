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
              Text('Flutter',
                style: TextStyle(fontSize: 40),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              RaisedButton(
                child: Text('Update', style: TextStyle(color: Colors.white),),
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