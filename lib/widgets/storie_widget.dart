import 'package:flutter/material.dart';

class StorieWidget extends StatefulWidget {
  @override
  _StorieWidgetState createState() => _StorieWidgetState();
}

class _StorieWidgetState extends State<StorieWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 34,
              backgroundColor: Colors.pink,
            ),
            CircleAvatar(
              radius: 31,
              backgroundColor: Colors.black,
            ),
            CircleAvatar(
              radius: 30,
            ),
          ],
        ));
  }
}
