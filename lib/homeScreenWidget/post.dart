import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_demo/app_size.dart';

class Post extends StatelessWidget {
  final String username;
  final String userImageURL;
  final String imageURL;
  final int likesCount;
  final int noofComments;

  const Post(this.username,this.userImageURL,this.imageURL,this.likesCount,this.noofComments);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            color:  Colors.white,
            child: Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage('$userImageURL'),
                      fit: BoxFit.contain
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Text('$username',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Image.network('$imageURL',fit: BoxFit.fitHeight,),
          Container(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Icon(Icons.favorite_border,size: vIconSize,),
                SizedBox(width: 10,),
                Icon(Icons.chat_bubble,size: vIconSize,),
                SizedBox(width: 10,),
                Icon(Icons.call_made,size: vIconSize,),
                SizedBox(width: 10,),
                Icon(Icons.save_alt_outlined,size: vIconSize,),
                SizedBox(width: 10,),
              ],),
              SizedBox(height: 5,),
              Container(padding: EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                children: [
                  Text('$likesCount likes',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                ],
              ),
              ),
              Text('View All $noofComments Comments',
              style: TextStyle(color: Colors.black),)
            ],
          ),
          ),
        ],
      ),
    );
  }
}
