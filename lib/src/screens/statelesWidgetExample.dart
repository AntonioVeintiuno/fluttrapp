import 'package:flutter/material.dart';
import 'package:first_app/src/widgets/card.dart';

class StatlessWidgetExample extends StatelessWidget {
  final double iconSize = 40.0;
  final TextStyle textStyle = TextStyle(color: Colors.grey, fontSize: 30.0);

  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sateless widget"),
        backgroundColor: Colors.red[300],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MyCard(
              title: Text('I Love Flutter',style: textStyle),
              icon: Icon(Icons.favorite, color: Colors.red, size: iconSize),
            ),
            MyCard(
              title: Text('I Like This Video',style: textStyle),
              icon: Icon(Icons.thumb_up, color: Colors.blue, size: iconSize),
            ),
            MyCard(
              title: Text('Next video',style: textStyle),
              icon: Icon(Icons.queue_play_next, color: Colors.brown, size: iconSize),
            )
          ],
        ),
      ),
    );
  }

}