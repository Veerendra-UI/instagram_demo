import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_demo/app_size.dart';

class Story extends StatelessWidget {
  final String imageURL;
  Story(this.imageURL);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 5),
    child: Stack(alignment: Alignment.center,
    children: [
      Container(
        height: vStorySize+10,
        width: vStorySize+10,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.pink,Colors.orange],
          ),
          shape: BoxShape.circle,
        ),
      ),
      Container(
        height: vStorySize+5,
          width: vStorySize+5,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
      ),
      Container(
        width: vStorySize,
        height: vStorySize,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: NetworkImage(imageURL), fit: BoxFit.contain),
        ),
      ),
    ],
    ),
    );
  }
}
