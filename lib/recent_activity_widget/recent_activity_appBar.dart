import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_demo/app_size.dart';

class RecentActivityAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      color: Colors.white,
      height: 50,
      alignment: Alignment.centerLeft,
      width: double.infinity,
      child: Text('Activity', style: TextStyle(
        fontWeight: FontWeight.bold,fontSize: vUserNameTitleSize
      ),),
    );
  }
}
