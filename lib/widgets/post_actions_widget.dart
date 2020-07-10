import 'package:flutter/material.dart';
import 'package:instagram/widgets/post_icon_widget.dart';

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
          PostIconWidget(faIcon: FaIcon(FontAwesomeIcons.heart)),
          PostIconWidget(faIcon: FaIcon(FontAwesomeIcons.comment)),
          PostIconWidget(faIcon: FaIcon(FontAwesomeIcons.paperPlane)),
        ]),
        PostIconWidget(faIcon: FaIcon(FontAwesomeIcons.bookmark)),
      ],
    );
  }
}
