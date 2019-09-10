import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: Text('R'),),
      title: Text('Rodrigo'),
      subtitle: Text('rigo@mail.com'),
    );
  }
}