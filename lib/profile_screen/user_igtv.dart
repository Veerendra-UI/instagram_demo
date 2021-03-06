import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class UserIGTv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(crossAxisCount: 3,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          color: Colors.black12,
          child:
          Image.network('https://picsum.photos/id/${index }/200/300',
            fit: BoxFit.cover,),

        );
      },
      staggeredTileBuilder: (index) {
        return StaggeredTile.count(1, 2);
      },
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
    );
  
  }
}
