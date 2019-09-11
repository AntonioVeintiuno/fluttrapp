import 'package:first_app/src/screens/tabs_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/home_statefull';
  HomePage({Key key}): super(key:key);
  @override
  _HomePageState createState() => _HomePageState();
}

enum DialogAction {
  yes,
  no
}
class _HomePageState extends State<HomePage> {
  String titulo = '';
  String textInput = "";
  final TextEditingController controller = TextEditingController();

  void alertResult(DialogAction action){
    print('tu accion es $action');
  }

  void showAlert(String value) {
    AlertDialog dialog = AlertDialog(
      content: Text(value),
      actions: <Widget>[
        FlatButton(child: Text('Si'), onPressed: (){alertResult(DialogAction.yes);},),
        FlatButton(child: Text('No'), onPressed: (){alertResult(DialogAction.no); },)
      ],
    );
    showDialog(context: context, builder: (BuildContext context) {return dialog; });
  }

  changePage(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => MyTabs()));
  }

  void onChange(String value){
    setState(() {
      textInput = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Alert Dialog'),
        backgroundColor: Colors.green,
      ),
      body: Container(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: <Widget>[
           TextField(
            decoration: InputDecoration(hintText: 'text here'),
            onChanged: onChange,
           ),
          //  Text(flutterText),
           RaisedButton(child: Text('show alert'),onPressed: (){showAlert(textInput);}, textColor: Colors.red,),
           RaisedButton(child: Text('Change page'),onPressed: (){changePage();}, textColor: Colors.red,)
         ]
       ),
     ),
    );
  }
}