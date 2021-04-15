import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_demo/profile_screen/edit_profile_button.dart';
import 'package:instagram_demo/profile_screen/tab_bar.dart';
import 'package:instagram_demo/profile_screen/user_igtv.dart';
import 'package:instagram_demo/profile_screen/user_info.dart';
import 'package:instagram_demo/profile_screen/user_profile_bar.dart';
import 'package:instagram_demo/profile_screen/user_saved_stories.dart';
import 'package:instagram_demo/profile_screen/user_tag_post.dart';
import 'package:instagram_demo/profile_screen/userpost.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              UserProfileBar(),
              UserInfoPannel(),
              EditProfileButton(),
              UserSavedStories(),
              ProfileTabBar(),
              Expanded(
                child: NotificationListener<OverscrollIndicatorNotification>(
                  onNotification: (overScroll) {
                    overScroll.disallowGlow();
                    return;
                  },
                  child: TabBarView(
                    children: [
                      UserPost(),
                      UserIGTv(),
                      UserTaggedPosts(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
