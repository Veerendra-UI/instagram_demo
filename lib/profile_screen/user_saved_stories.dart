import 'package:flutter/material.dart';
import 'package:instagram_demo/profile_screen/user_story.dart';

import 'add_user_story_button.dart';

class UserSavedStories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll) {
          overScroll.disallowGlow();
          return;
        },
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            UserStory(1025),
            UserStory(1036),
            UserStory(1028),
            UserStory(1010),
            UserStory(1054),
            UserStory(1045),
            UserStory(1029),
            UserStory(1033),
            UserStory(1045),

            AddUserStoryButton(),
          ],
        ),
      ),
    );
  }
}
