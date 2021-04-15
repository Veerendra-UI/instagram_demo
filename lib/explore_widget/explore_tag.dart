import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExploreTag extends StatelessWidget {
  final String tagName;
  ExploreTag({Key key,this.tagName}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
    child: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black45),
      ),
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Text(tagName),
    ),
    );
  }
}
List<String> tagList=[
  'IGTV',
  'Food',
  'Travel',
  'Meme',
  'Architecture',
  'Style',
  'Decore',
  'Art',
  'Beauty',
  'DIY',
  'TV & Movies',
  'Sports',
];
