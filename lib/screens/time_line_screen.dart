import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instagram/widgets/time_line/post_widget.dart';
import 'package:instagram/widgets/time_line/storie_widget.dart';

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
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 0,
        title: Container(
          height: 50,
          child: Image.asset(
            "assets/images/text-logo.svg.png",
            fit: BoxFit.cover,
          ),
        ),
        actions: <Widget>[
          GestureDetector(
            child: Icon(
              Icons.add_box_outlined,
            ),
            onTap: () {},
          ),
          SizedBox(
            width: 10,
          ),
          GestureDetector(
            child: Container(
              height: 30,
              width: 30,
              child: Icon(Icons.favorite_border),
            ),
            onTap: () {},
          ),
          SizedBox(
            width: 10,
          ),
          GestureDetector(
            child: Icon(Icons.north_east),
            onTap: () {},
          ),
        ],
      ),
      //TODO: separate stories from posts, the index value is not the same on both
      body: ListView.builder(
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
                _posts[index],
              ],
            );
          } else {
            return _posts[index];
          }
        },
      ),
    );
  }
}
