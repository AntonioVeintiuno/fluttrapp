import 'package:first_app/src/screens/button.dart';
import 'package:first_app/src/screens/drawer_screens/batery.dart';
import 'package:first_app/src/screens/drawer_screens/drawer.dart';
import 'package:first_app/src/screens/drawer_screens/settings.dart';
import 'package:first_app/src/screens/home.dart';
import 'package:first_app/src/screens/home_page.dart';
import 'package:first_app/src/screens/tabs_page.dart';
import 'package:flutter/material.dart';
import 'package:first_app/src/screens/statelesWidgetExample.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
    routes: <String, WidgetBuilder> {
      '/button': (context) => MyButton(),
      '/drawer': (context) => DrawerScreen(),
      MyTabs.routeName: (context)=> MyTabs(),
      HomePage.routeName: (context) => HomePage(),
      BateryScreen.routeName: (context) => BateryScreen(),
      SettingScreen.routeName: (context) => SettingScreen(),
      StatlessWidgetExample.routeName: (context) => StatlessWidgetExample(),
    },
  ));
}
