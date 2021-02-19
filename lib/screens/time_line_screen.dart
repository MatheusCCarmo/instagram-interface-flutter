import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instagram/widgets/time_line/post_widget.dart';
import 'package:instagram/widgets/time_line/storie_widget.dart';

class TimeLineScreen extends StatefulWidget {
  @override
  _TimeLineScreenState createState() => _TimeLineScreenState();
}

class _TimeLineScreenState extends State<TimeLineScreen> {
  List<PostWidget> _posts = List.generate(
    10,
    (index) => PostWidget(),
  );

  List<StorieWidget> _stories = List.generate(
    12,
    (index) => StorieWidget(),
  );

  Future<void> refreshTimeLine() async {
    await Future.delayed(Duration(milliseconds: 500));
    setState(() {
      _posts = List.generate(10, (index) => PostWidget());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        elevation: 0,
        leadingWidth: 0,
        title: Container(
          height: 42,
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
            width: 15,
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
            width: 15,
          ),
          GestureDetector(
            child: Icon(Icons.north_east),
            onTap: () {},
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: refreshTimeLine,
        // backgroundColor: Colors.black,
        child: ListView.builder(
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
                      itemBuilder: (storiesContext, storiesIndex) {
                        return _stories[storiesIndex];
                      },
                    ),
                  ),
                  Divider(
                    height: 1,
                  ),
                  _posts[index],
                ],
              );
            } else {
              return _posts[index];
            }
          },
        ),
      ),
    );
  }
}
