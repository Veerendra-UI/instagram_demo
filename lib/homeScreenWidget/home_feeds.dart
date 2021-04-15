import 'package:flutter/cupertino.dart';
import 'package:instagram_demo/homeScreenWidget/post.dart';

class HomeFeeds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Post('Dream_lover_18', 'https://picsum.photos/id/102/200',
            'https://picsum.photos/id/1041/300/200', 23, 27),
        Post('official_kiccha', 'https://picsum.photos/id/101/200',
            'https://picsum.photos/id/1070/300/200', 104, 131),
        Post('N_S_lover_shivu', 'https://picsum.photos/id/125/200',
            'https://picsum.photos/id/1080/300/200', 206, 72),
        Post('Devil_lover', 'https://picsum.photos/id/112/200',
            'https://picsum.photos/id/239/300/200', 1014, 5),
        Post('king_of_ganchali', 'https://picsum.photos/id/25/200',
            'https://picsum.photos/id/1041/300/200', 23, 27),
        Post('I_smart_Shankar', 'https://picsum.photos/id/125/200',
            'https://picsum.photos/id/1070/300/200', 104, 131),
        Post('Black_lover', 'https://picsum.photos/id/1025/200',
            'https://picsum.photos/id/1080/300/200', 206, 72),
        Post('crazy_boy', 'https://picsum.photos/id/1212/200',
            'https://picsum.photos/id/239/300/200', 1014, 5),

      ],
    );
  }
}
