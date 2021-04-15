import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_demo/app_color.dart';
import 'package:instagram_demo/homeScreenWidget/home_feeds.dart';
import 'package:instagram_demo/homeScreenWidget/stories.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: vScaffoldBgColor,
      body: SafeArea(
        child: Stack(children: [
          NotificationListener<OverscrollIndicatorNotification>(
          onNotification:(overScroll){
          overScroll.disallowGlow();
          return;
          },
          child: ListView(
            children:[
              Container(height:50),
              Stories(),
              HomeFeeds(),
            ],
          ),
          ),
        ],
        ),
      ),
    );
  }
}
