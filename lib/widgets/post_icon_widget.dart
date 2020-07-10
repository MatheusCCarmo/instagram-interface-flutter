import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostIconWidget extends StatefulWidget {
  FaIcon faIcon;
  Icon icon;

  PostIconWidget({this.icon, this.faIcon});

  @override
  _PostIconWidgetState createState() => _PostIconWidgetState();
}

class _PostIconWidgetState extends State<PostIconWidget> {
  @override
  Widget build(BuildContext context) {
    final disponibleIcon = widget.icon == null ? widget.faIcon : widget.icon;
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: disponibleIcon,
    );
  }
}
