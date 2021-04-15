import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_demo/explore_widget/explore_feed.dart';
import 'package:instagram_demo/explore_widget/search_bar.dart';

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SearchBar(),
            ExploreFeeds(),
          ],
        ),
      ),
    );
  }
}
