import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostActionsWidget extends StatefulWidget {
  @override
  _PostActionsWidgetState createState() => _PostActionsWidgetState();
}

class _PostActionsWidgetState extends State<PostActionsWidget> {
  Icon favSelectedIcon = Icon(
    Icons.favorite,
    color: Colors.red[600],
    size: 24,
  );

  Icon favIcon = Icon(
    Icons.favorite_border,
    size: 24,
  );

  bool isFavSelected = false;
  bool isBookmarkSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5.0, left: 5, top: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(children: <Widget>[
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: isFavSelected ? favSelectedIcon : favIcon,
              ),
              onTap: () {
                setState(() {
                  isFavSelected = !isFavSelected;
                });
              },
            ),
            SizedBox(
              width: 6,
            ),
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(
                  Icons.chat_bubble_outline,
                  size: 24,
                ),
              ),
              onTap: () {},
            ),
            SizedBox(
              width: 6,
            ),
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(
                  Icons.north_east,
                  size: 24,
                ),
              ),
              onTap: () {},
            ),
          ]),
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Icon(
                isBookmarkSelected ? Icons.bookmark : Icons.bookmark_border,
                size: 28,
              ),
            ),
            onTap: () {
              setState(() {
                isBookmarkSelected = !isBookmarkSelected;
              });
            },
          ),
        ],
      ),
    );
  }
}
