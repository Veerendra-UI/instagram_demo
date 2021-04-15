import 'package:flutter/material.dart';
import 'package:instagram_demo/uiScreens/explore_screen.dart';
import 'package:instagram_demo/uiScreens/home_screen.dart';
import 'package:instagram_demo/uiScreens/profile_screen.dart';
import 'package:instagram_demo/uiScreens/recent_activity.dart';
import 'package:instagram_demo/uiScreens/reel_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //primarySwatch: Colors.white,
          primaryColor: Colors.white),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PersistentTabController _controller;

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        activeColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.search),
        activeColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.ondemand_video),
        activeColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.favorite_outline_outlined),
        activeColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person),
        activeColorPrimary: Colors.black,
      ),
    ];
  }

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        items: _navBarsItems(),
        screens: [
          HomePage(),
          ExploreScreen(),
          ReelScreen(),
          RecentActivityScreen(),
          ProfileScreen(),
        ],
        navBarStyle: NavBarStyle.style6,
      ),
    );
  }
}
