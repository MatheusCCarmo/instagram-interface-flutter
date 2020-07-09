import 'package:flutter/material.dart';

class ActionsWidget extends StatefulWidget {
  @override
  _ActionsWidgetState createState() => _ActionsWidgetState();
}

class _ActionsWidgetState extends State<ActionsWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(children: <Widget>[
          Icon(Icons.favorite_border),
          Icon(Icons.chat_bubble_outline),
          Icon(Icons.send),
        ]),
        Icon(Icons.bookmark_border)
      ],
    );
  }
}
