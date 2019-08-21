import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}): super(key:key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String flutterText = "";
  final TextEditingController controller = TextEditingController();

  void showAlert() {
    AlertDialog dialog = AlertDialog(
      content: Text('Moe'),
    );
    showDialog(context: context, builder: (BuildContext context) {return dialog; });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Alert Dialog'),
        backgroundColor: Colors.green[300],
      ),
      body: Container(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: <Widget>[
           TextField(
            decoration: InputDecoration(hintText: 'text here'),
           ),
           Text(flutterText),
           RaisedButton(child: Text('show alert'),onPressed: showAlert, textColor: Colors.red,)
         ]
       ),
     ),
    );
  }
}