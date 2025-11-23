import 'package:flutter/material.dart';
import 'home.dart';
import 'search.dart';
import 'reels.dart';
import 'shop.dart';
import 'profil.dart';

class InstagramNavigation extends StatefulWidget {
  const InstagramNavigation({super.key});

  @override
  State<InstagramNavigation> createState() => _InstagramNavigationState();
}

class _InstagramNavigationState extends State<InstagramNavigation> {
  int _currentIndex = 0; // onglet actif

  // Liste des pages correspondant aux onglets
  final List<Widget> _pages = [
    Home(),
    Search(),
    Reels(),
    Shop(),
    Profil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages, // Affiche la page active tout en gardant l'état des autres
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // changer de page
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            activeIcon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection_outlined),
            activeIcon: Icon(Icons.video_collection),
            label: "Reels",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop_outlined),
            activeIcon: Icon(Icons.shop),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage("assets/profile/yyy.png"),
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
