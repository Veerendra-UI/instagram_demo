import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReelIcon extends StatelessWidget {
  final IconData icon;
  String label ='';
  ReelIcon({this.icon,this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(vertical: 10),
    child: Row(
      children: [
        Spacer(),
        Column(
          children: [
            Container(
              child: Icon(icon,color: Colors.white),
            ),
          ],
        )
      ],
    ),
    );
  }
}
