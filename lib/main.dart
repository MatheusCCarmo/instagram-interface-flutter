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
        leading: Icon(
          Icons.camera_alt,
        ),
        title: Container(
          height: 45,
          margin: EdgeInsets.only(left: 70),
          child: Image.asset(
            "assets/images/text-logo.svg.png",
          ),
        ),
        actions: <Widget>[
          Tab(
            icon: Container(
              height: 35,
              width: 35,
              child: Image.asset(
                "assets/images/IGTV-logo.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, right: 10, left: 10),
            child: FaIcon(
              FontAwesomeIcons.paperPlane,
            ),
          ),
        ],
      ),
      body: TimeLineScreen(),
    );
  }
}
