import 'package:flutter/material.dart';
import 'package:instagram_demo/homeScreenWidget/story.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(scrollDirection: Axis.horizontal,
      children: [
        Story('https://picsum.photos/id/100/200'),
        Story('https://picsum.photos/id/1020/200'),
        Story('https://picsum.photos/id/1031/200'),
        Story('https://picsum.photos/id/1071/200'),
        Story('https://picsum.photos/id/119/200'),
        Story('https://picsum.photos/id/14/200'),
        Story('https://picsum.photos/id/105/200'),
        Story('https://picsum.photos/id/1030/200'),
        Story('https://picsum.photos/id/1091/200'),
        Story('https://picsum.photos/id/101/200'),
        Story('https://picsum.photos/id/1019/200'),
        Story('https://picsum.photos/id/104/200'),

      ],),
    );
  }
}
