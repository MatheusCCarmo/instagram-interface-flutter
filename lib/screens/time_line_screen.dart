import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instagram/widgets/post_widget.dart';
import 'package:instagram/widgets/storie_widget.dart';

class TimeLineScreen extends StatefulWidget {
  @override
  _TimeLineScreenState createState() => _TimeLineScreenState();
}

class _TimeLineScreenState extends State<TimeLineScreen> {
  List<PostWidget> _posts = [
    PostWidget(),
    PostWidget(),
    PostWidget(),
    PostWidget(),
    PostWidget(),
    PostWidget(),
    PostWidget(),
    PostWidget(),
  ];

  List<StorieWidget> _stories = [
    StorieWidget(),
    StorieWidget(),
    StorieWidget(),
    StorieWidget(),
    StorieWidget(),
    StorieWidget(),
    StorieWidget(),
    StorieWidget(),
    StorieWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _posts.length,
      itemBuilder: (context, index) {
        if (index == 0) {
          return Column(
            children: <Widget>[
              Container(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _stories.length,
                  itemBuilder: (context, index) {
                    return _stories[index];
                  },
                ),
              ),
              _posts[index]
            ],
          );
        } else {
          return _posts[index];
        }
      },
    );
  }
}
