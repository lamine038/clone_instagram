import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/components/appbar.dart';
import 'package:instagram/components/story.dart';


class Home extends StatelessWidget{
   Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppbarComponent(),
        body: Container(
          child: Container(
            child: Column(
              children: [
                Story(),
                divider,
                Posts,
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
      // Container(
      //   height: 80,
      //   color: Colors.red,
      //   width: 80,
      // ),
    
  [],)
);

Widget divider = Divider(
  color: Colors.grey,
  height: 1,
  thickness: 1,
);

Widget Posts = Container(

);