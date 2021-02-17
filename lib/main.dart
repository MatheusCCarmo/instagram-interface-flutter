import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/screens/explore_screen.dart';
import 'package:instagram/screens/profile_screen.dart';
import 'package:instagram/screens/reels_screen.dart';
import 'package:instagram/screens/shop_screen.dart';
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
        iconTheme: IconThemeData(
          size: 30,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  List<Widget> _screens = [
    TimeLineScreen(),
    ExploreScreen(),
    ReelsScreen(),
    ShopScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          height: 56,
          // margin: EdgeInsets.only(bottom: 15),
          alignment: Alignment.topCenter,
          child: BottomNavigationBar(
            backgroundColor: _selectedIndex == 2 ? Colors.black : Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            selectedFontSize: 13,
            unselectedFontSize: 12,
            iconSize: 28,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.white24,
            selectedItemColor: Colors.blue,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  _selectedIndex == 0 ? Icons.home : Icons.home_outlined,
                  color: _selectedIndex != 2 ? Colors.black : Colors.white,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: _selectedIndex != 2 ? Colors.black : Colors.white,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  _selectedIndex == 2
                      ? Icons.play_arrow
                      : Icons.play_arrow_outlined,
                  color: _selectedIndex != 2 ? Colors.black : Colors.white,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  _selectedIndex == 3
                      ? Icons.shopping_bag
                      : Icons.shopping_bag_outlined,
                  color: _selectedIndex != 2 ? Colors.black : Colors.white,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  _selectedIndex == 4
                      ? Icons.account_circle
                      : Icons.account_circle_outlined,
                  color: _selectedIndex != 2 ? Colors.black : Colors.white,
                ),
                label: '',
              ),
            ],
          ),
        ),
        body: _screens[_selectedIndex],
      ),
    );
  }
}
