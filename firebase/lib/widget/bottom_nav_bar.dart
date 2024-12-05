import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget{

  final int selectedIndex;
  final Function(int) onTap;

  const BottomNavBar({required this.selectedIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onTap,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.white,
      items: const[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Ana Sayfa',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Ayarlar',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'CRUD',
        ),
      ],
    );
  }
}