import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_demo/recent_activity_widget/activity.dart';
import 'package:instagram_demo/recent_activity_widget/recent_activity_appBar.dart';


class RecentActivityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            NotificationListener<OverscrollIndicatorNotification>(
              onNotification: (overScroll){
                overScroll.disallowGlow();
                return;
              },
              child: ListView(
                children: [
                  Container(
                    height: 50,
                    color: Colors.white,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: activityList,
                    ),
                  )
                ],
              ),
            ),
            RecentActivityAppBar(),
          ],
        ),
      ),
    );
  }
}
List<Activity> activityList = [
  Activity.like(
    username: 'kamthe_pranav',
    userImageID: 22,
    activityImageID: 674,
  ),
  Activity.like(
    username: 'indrani.s',
    userImageID: 65,
    activityImageID: 338,
  ),
  Activity.comment(
    username: 'prayag_aru',
    userImageID: 1012,
    activityImageID: 212,
    comments: 'Amazing 🤩',
  ),
  Activity.tag(
    username: 'tanmay_pardeshi',
    userImageID: 203,
    activityImageID: 3,
  ),
  Activity.likedComment(
    userImageID: 1027,
    username: 'yaminiiiii77',
    activityImageID: 111,
    comments: '😍😍😍',
  ),
  Activity.mentionInComment(
    activityImageID: 1025,
    userImageID: 373,
    username: '_kshitija_02_',
  ),
  Activity.like(
    username: 'hritik_uttarkar',
    userImageID: 117,
    activityImageID: 3,
  ),
  Activity.like(
    username: 'atharva__73',
    userImageID: 669,
    activityImageID: 338,
  ),
  Activity.comment(
    username: 'khushabu_v_madhav',
    userImageID: 1011,
    activityImageID: 1012,
    comments: '🔥🔥🔥',
  ),
  Activity.tag(
    username: 'snehal_306',
    userImageID: 550,
    activityImageID: 3,
  ),
  Activity.likedComment(
    userImageID: 1014,
    username: 'supriyakadam_3108',
    activityImageID: 111,
    comments: '❤',
  ),
  Activity.mentionInComment(
    activityImageID: 1005,
    userImageID: 435,
    username: 'shubhamkoprekar07',
  )
];

