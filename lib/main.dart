import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/screens/time_line_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData(
        primaryColor: Colors.white,
        iconTheme: IconThemeData(size: 30),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
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
          ),
          SizedBox(
            width: 10,
          ),
          GestureDetector(
            child: Container(
                height: 30, width: 30, child: Icon(Icons.favorite_border)),
          ),
          SizedBox(
            width: 10,
          ),
          GestureDetector(
            child: Icon(Icons.north_east),
          ),
        ],
      ),
      body: TimeLineScreen(),
    );
  }
}
