import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  Story({super.key});
  final List storiesItemes = [
    {
      "color": Colors.red,
      "pseudo": "lamine kama",
      "image": "assets/profile/ccc.png",
    },
    {
      "color": Colors.blue,
      "pseudo": "daba diouf",
      "image": "assets/profile/yyy.png",
    },
    {
      "color": Colors.orange,
      "pseudo": "daouda ka",
      "image": "assets/profile/www.png",
    },
    {
      "color": Colors.blue,
      "pseudo": "abdou sy",
      "image": "assets/profile/eee.png",
    },
    {
      "color": Colors.orange,
      "pseudo": "amdy diouf",
      "image": "assets/profile/ttt.png",
    },
    {
      "color": Colors.blue,
      "pseudo": "issa diouf",
      "image": "assets/profile/rrr.png",
    },
    {
      "color": Colors.orange,
      "pseudo": "baba faye",
      "image": "assets/profile/aaa.png",
    },
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
            // height: 100,
            // color: story['color'],
            // width: 80,
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset("assets/profile/Story.png", height: 70),
                    Image.asset("assets/profile/Story.png", height: 67),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.pink,
                      backgroundImage: AssetImage(story['image']),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Text(story['pseudo'], style: TextStyle(fontSize: 12)),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
