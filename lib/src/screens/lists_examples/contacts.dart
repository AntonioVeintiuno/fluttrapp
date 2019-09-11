import 'package:first_app/src/models/contact_model.dart';
import 'package:first_app/src/screens/lists_examples/contact_item.dart';
import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  static const String routeName = '/contacts';

  buildList(){
    return <Contact>[
      Contact(name: "Rodrigo Morales", email: 'rigo.morales@mail.com'),
      Contact(name: "Martin Flower", email: 'marinf@mail.com'),
      Contact(name: "Linux Tolvar", email: 'tolvar@mail.com'),
      Contact(name: "Steve Mozniak", email: 'mozniak@mail.com'),
      Contact(name: "Robert Martin", email: 'rmartin@mail.com'),
      Contact(name: "Dennis Ritchie", email: 'dritchie@mail.com'),
      Contact(name: "Anders Hejglsberg", email: 'rmartin@mail.com'),
      Contact(name: "Robert Martin", email: 'rmartin@mail.com')
    ];
  }

  List<ContactItem> buildContactList(){
    return buildList().map<ContactItem>((contact) => ContactItem(contact: contact)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contactos')),
      body: ListView(children: buildContactList()),
    );
  }
}