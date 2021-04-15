import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Activity extends StatelessWidget {
  String currentUserName;
  final int userImageID;
  final String username;
  final int activityImageID;
  final String activityText;
  String comments;

  Activity.like({Key key, this.username,this.activityImageID,this.comments,this.currentUserName,this.userImageID})
  :activityText = 'liked your photo.';
  Activity.comment({Key key,this.userImageID,this.currentUserName,this.comments,this.activityImageID,this.username})
  : activityText = comments == null ?'commented on your post.':'commented:$comments';
  Activity.tag({Key key,this.username,this.activityImageID,this.userImageID})
  : activityText = 'tagged in a post.';
  Activity.likedComment({Key key, this.userImageID, this.username, this.activityImageID, this.comments})
  : activityText = comments == null ? ' liked your comment.' : ' liked your comment: $comments';

  Activity.mentionInComment({Key key,this.userImageID,this.username,this.activityImageID})
  :activityText='mentioned your in comment.';

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(vertical: 10),
      child:Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image:  NetworkImage("https://picsum.photos/id/$userImageID/200"),
                fit: BoxFit.contain
              ),
            ),
          ),
          SizedBox(width: 10,),
          Text('$username',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          Text(
            '$activityText', maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 15),
          ),
          Spacer(),
          Container(
            width: 50,height: 50,
            color: Colors.black,
            child: Image.network('https://picsum.photos/id/$activityImageID/200'),
          )
        ],
      ) ,
    );
  }
}
