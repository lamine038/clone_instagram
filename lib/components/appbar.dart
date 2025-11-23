import 'package:flutter/material.dart';

class AppbarComponent extends StatelessWidget implements PreferredSizeWidget{
  const AppbarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
          toolbarHeight: 200,
          title: Image.asset('assets/profile/logos_instagram.png', width: 140),
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                // Action pour le bouton de messagerie
              },
            ),
            IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {
                // Action pour le bouton de messagerie
              },
            ),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () {
                // Action pour le bouton de messagerie
              },
            ),
          ],
          elevation: 0,
        );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}