import 'package:flutter/material.dart';

class PostIconWidget extends StatefulWidget {
  Icon icon;

  PostIconWidget(this.icon);

  @override
  _PostIconWidgetState createState() => _PostIconWidgetState();
}

class _PostIconWidgetState extends State<PostIconWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.symmetric(horizontal: 4),
      child: widget.icon,
    );
  }
}
