import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
 var app =MaterialApp(
   home: Scaffold(
     appBar: AppBar(
       title: Text("Firsty"),
     ),
     body: Container(
       child: Center(
         child: Text("Hello",
         style: TextStyle(fontSize: 40),
         ),
       ),
     ),
     floatingActionButton: FloatingActionButton(
       child: Icon(Icons.autorenew),
       onPressed: () { print('click');},
     ),
   ),
 );
  runApp(app);
}