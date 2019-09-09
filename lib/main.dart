import 'package:first_app/src/screens/button.dart';
import 'package:first_app/src/screens/home.dart';
import 'package:first_app/src/screens/home_page.dart';
import 'package:first_app/src/screens/tabs_page.dart';
import 'package:flutter/material.dart';
import 'package:first_app/src/screens/statelesWidgetExample.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
    initialRoute: '/',
    routes: {
      '/tabs': (context)=> MyTabs(),
      '/stateles': (context) => StatlessWidgetExample(),
      '/button': (context) => MyButton(),
      '/home_statefull': (context) => HomePage(),
    },
  ));
}
