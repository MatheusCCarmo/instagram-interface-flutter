import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostActionsWidget extends StatefulWidget {
  @override
  _PostActionsWidgetState createState() => _PostActionsWidgetState();
}

class _PostActionsWidgetState extends State<PostActionsWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(children: <Widget>[
          SizedBox(
            width: 10,
          ),
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Icon(Icons.favorite_border),
            ),
            onTap: () {},
          ),
          SizedBox(
            width: 10,
          ),
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Icon(Icons.chat_bubble_outline),
            ),
            onTap: () {},
          ),
          SizedBox(
            width: 10,
          ),
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Icon(Icons.north_east),
            ),
            onTap: () {},
          ),
        ]),
        GestureDetector(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(
              Icons.bookmark_border,
            ),
          ),
          onTap: () {},
        ),
      ],
    );
  }
}
