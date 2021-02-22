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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  TabController _tabController;

  List<Widget> _screens = [
    TimeLineScreen(),
    ExploreScreen(),
    ReelsScreen(),
    ShopScreen(),
    ProfileScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      vsync: this,
      initialIndex: 0,
      length: _screens.length,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget customBottomNavigationBar(BuildContext context) {
    double myHeight = 45; //Your height HERE
    return Container(
      height: myHeight,
      color: _selectedIndex != 2 ? Colors.white : Colors.black,
      width: MediaQuery.of(context).size.width,
      child: TabBar(
        controller: _tabController,
        onTap: (value) {
          setState(() {
            _selectedIndex = _tabController.index;
          });
        },
        tabs: [
          Tab(
            icon: Icon(
              _selectedIndex == 0 ? Icons.home : Icons.home_outlined,
              size: 26.0,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.search,
              size: _selectedIndex == 1 ? 30 : 26.0,
            ),
          ),
          Tab(
            icon: Icon(
              _selectedIndex == 2
                  ? Icons.play_arrow
                  : Icons.play_arrow_outlined,
              size: 26.0,
            ),
          ),
          Tab(
            icon: Icon(
              _selectedIndex == 3
                  ? Icons.shopping_bag
                  : Icons.shopping_bag_outlined,
              size: 26.0,
            ),
          ),
          Tab(
            icon: Icon(
              _selectedIndex == 4
                  ? Icons.account_circle
                  : Icons.account_circle_outlined,
              size: 26.0,
            ),
          ),
        ],
        unselectedLabelColor: _selectedIndex != 2 ? Colors.black : Colors.white,
        labelColor: _selectedIndex != 2 ? Colors.black : Colors.white,
        // indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: _selectedIndex != 2 ? Colors.white : Colors.black,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: customBottomNavigationBar(context),
        body: _screens[_selectedIndex],
      ),
    );
  }
}
