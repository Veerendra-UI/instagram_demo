import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_demo/app_size.dart';
import 'package:instagram_demo/homeScreenWidget/app_bar_icon.dart';

class AddUserStoryButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 5),
    child: Container(
      height: vUserStorySize+10,
      width: vUserStorySize+10,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black45),
        shape: BoxShape.circle,
      ),
      child: AppBarIcon(icon: Icons.add,onPressed: null,),
    ),
    );
  }
}
