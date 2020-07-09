import 'package:flutter/material.dart';
import 'package:instagram/widgets/post_icon_widget.dart';

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
          PostIconWidget(Icon(Icons.favorite_border)),
          PostIconWidget(Icon(Icons.chat_bubble_outline)),
          PostIconWidget(Icon(Icons.send)),
        ]),
        PostIconWidget(Icon(Icons.bookmark_border)),
      ],
    );
  }
}
