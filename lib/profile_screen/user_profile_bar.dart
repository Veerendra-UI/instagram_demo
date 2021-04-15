import 'package:flutter/material.dart';
import 'package:instagram_demo/homeScreenWidget/app_bar_icon.dart';

import '../app_size.dart';

class UserProfileBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      color: Colors.white,
      height: 50,
      child: Row(
        children: [
          Text(
            'manty.k',
            style: TextStyle(
                fontSize: vUserNameTitleSize, fontWeight: FontWeight.bold),
          ),
          AppBarIcon(icon: Icons.keyboard_arrow_down, onPressed: null),
          Spacer(),
          AppBarIcon(
            icon: Icons.add_box_outlined,
            onPressed: null,
          ),
          SizedBox(width: 10),
          AppBarIcon(
            icon: Icons.menu,
            onPressed: null,
          )
        ],
      ),
    );
  }
}
