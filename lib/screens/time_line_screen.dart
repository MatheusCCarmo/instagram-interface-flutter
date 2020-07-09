import 'package:flutter/material.dart';
import 'package:instagram/widgets/post_widget.dart';
import 'package:instagram/widgets/storie_widget.dart';

class TimeLineScreen extends StatefulWidget {
  @override
  _TimeLineScreenState createState() => _TimeLineScreenState();
}

class _TimeLineScreenState extends State<TimeLineScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              StorieWidget(),
              StorieWidget(),
              StorieWidget(),
              StorieWidget(),
              StorieWidget(),
              StorieWidget(),
              StorieWidget(),
              StorieWidget(),
              StorieWidget(),
              StorieWidget(),
              StorieWidget(),
              StorieWidget(),
            ],
          ),
        ),
        Container(
          height: 2500,
          child: Column(
            children: <Widget>[
              PostWidget(),
              PostWidget(),
              PostWidget(),
              PostWidget(),
            ],
          ),
        ),
      ],
    );
  }
}
