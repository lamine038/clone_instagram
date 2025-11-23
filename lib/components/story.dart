import 'package:flutter/material.dart';

class Story extends StatelessWidget {
   Story({super.key});
 final List storiesItemes =[
    {
      "color": Colors.red,
      "pseudo": "lamine kama",
      "image": "assets/profile/ccc.png"
    }
    ,
    {
      "color": Colors.blue,
      "pseudo": "lamine kama",
      "image": "assets/profile/yyy.png"
    },
    {
      "color": Colors.orange,
      "pseudo": "lamine kama",
      "image": "assets/profile/www.png"
    }
    
    ,
    {
      "color": Colors.blue,
      "pseudo": "lamine kama",
      "image": "assets/profile/eee.png"
    },
    {
      "color": Colors.orange,
      "pseudo": "lamine kama",
      "image": "assets/profile/ttt.png"
    }
    
    ,
    {
      "color": Colors.blue,
      "pseudo": "lamine kama",
      "image": "assets/profile/rrr.png"
    },
    {
      "color": Colors.orange,
      "pseudo": "lamine kama",
      "image": "assets/profile/aaa.png"
    }
    
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: storiesItemes.map((story) {
          return Container(
            margin: EdgeInsets.all(8.0),
            height: 80,
            color: story['color'],
            width: 80,
          );
        }).toList(),
      ),
    );
  }
}