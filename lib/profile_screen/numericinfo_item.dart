import 'package:flutter/cupertino.dart';

class NumericInfoItem extends StatelessWidget {
  final String infoName;
  final int infoValue;

  NumericInfoItem(this.infoName,this.infoValue);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$infoValue',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        Text('$infoName'),
      ],
    );
  }
}
