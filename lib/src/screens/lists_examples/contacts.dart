import 'package:first_app/src/screens/lists_examples/contact_item.dart';
import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  static const String routeName = '/contacts';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contactos')),
      body: ListView(children: <Widget>[
        ContactItem()
      ],),
    );
  }
}