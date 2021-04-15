import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_demo/app_size.dart';
import 'package:instagram_demo/profile_screen/numericinfo_item.dart';

class UserInfoPannel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: vStorySize,
                height: vStorySize,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage('https://picsum.photos/id/447/200'),
                  fit: BoxFit.contain
                  ),
                ),
              ),
              Spacer(),
              NumericInfoItem('Posts',50),
              Spacer(),
              NumericInfoItem('Followrs',998),
              Spacer(),
              NumericInfoItem('Following',650),
              Spacer(),
            ],
          ),
          SizedBox(height: 10,),
          Text('Veerendra H',
          style: TextStyle(fontWeight: FontWeight.bold),),
          Text('Flutter Developer | Cricket player'),
          Text('www.veeru18@gmail.com',style: TextStyle(color: Colors.blue),),
        ],
      ),
    );
  }
}
