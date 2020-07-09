import 'package:flutter/material.dart';

class StorieWidget extends StatefulWidget {
  @override
  _StorieWidgetState createState() => _StorieWidgetState();
}

class _StorieWidgetState extends State<StorieWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        radius: 30,
      ),
    );
  }
}
