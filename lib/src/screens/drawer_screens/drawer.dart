import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {

  Drawer getDrawer(BuildContext context) {
    var header = DrawerHeader(child: Text('Ajustes'));
    var info = AboutListTile(
      child: Text('Info delapp'),
      applicationIcon: Icon(Icons.favorite),
      applicationVersion: "v1.0.0",
      icon: Icon(Icons.info),
    );
    ListTile getItem(Icon icon, String description, String route) {
      return ListTile(
        leading: icon,
        title: Text(description),
        onTap: () {
          Navigator.pushNamed(context, route);
        },
      );
    }

    ListView getList() {
      return ListView(
        children: <Widget>[
          header,
          getItem(Icon(Icons.settings), 'Configuración', '/settings'),
          getItem(Icon(Icons.home), 'Página principal', '/'),
          getItem(Icon(Icons.battery_full), 'Configuración', '/batery'),
          info
        ],
      );
    }

    return Drawer( child: getList() );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: getDrawer(context),
      appBar: AppBar(title: Text('Drawer')),
      body: Container(
        child: Center(
          child: Text('Text center')
        ),
      ),
    );
  }
}