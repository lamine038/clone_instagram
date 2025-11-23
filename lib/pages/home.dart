import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/components/appbar.dart';
import 'package:instagram/components/post.dart';
import 'package:instagram/components/story.dart';


class Home extends StatelessWidget{
   Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppbarComponent(),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Story(),
                divider,
                SizedBox(height: 10),
                Post(),
              ],
            ),
          ),
        ),
    );
  }
  
}

Widget Stories = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children:    
  [],)
);

Widget divider = Divider(
  color: const Color.fromARGB(223, 154, 123, 123),
  height: 2,
  thickness: 1,
);
