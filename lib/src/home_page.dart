import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}): super(key:key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String flutterText = "";
  final TextEditingController controller = TextEditingController();

  void onSubmitted(String value) {
    setState(() {
      flutterText = flutterText + "\n" + value;
      controller.text="";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget App'),
        backgroundColor: Colors.green[300],
      ),
      body: Container(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: <Widget>[
           TextField(
            decoration: InputDecoration(hintText: 'text here'),
            onSubmitted: onSubmitted,
            controller: controller,
           ),
           Text(flutterText)
         ]
       ),
     ),
    );
  }
}