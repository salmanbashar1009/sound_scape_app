import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 2,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.library_music), label: "Library"),
        BottomNavigationBarItem(
            icon: Icon(Icons.games_outlined), label: "Create"),
        BottomNavigationBarItem(
            icon: Icon(Icons.alarm), label: "Alarm"),
        BottomNavigationBarItem(
            icon: Icon(Icons.diamond_outlined), label: "Awards"),
      ],
    );
  }
}