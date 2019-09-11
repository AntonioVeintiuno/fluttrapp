import 'package:first_app/src/models/contact_model.dart';
import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  final Contact contact;
  ContactItem({this.contact});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: Text(contact.name[0]),),
      title: Text(contact.name),
      subtitle: Text(contact.email),
    );
  }
}