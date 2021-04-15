import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
       itemBuilder: (BuildContext context,int index){
         return Container(
           padding: EdgeInsets.all(1),
           color: Colors.white,
           child:
           Image.network('https://picsum.photos/${index + 110}/200'),
         );
       },
    itemCount: 19,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),);
  }
}
