import 'package:flutter/material.dart';

class Menu {
  const Menu({
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;

  static List<Menu> getMenus() {
    return const [
      Menu(icon: Icons.home_outlined, title: 'Home'),
      Menu(icon: Icons.bar_chart, title: 'Report'),
      Menu(icon: Icons.person_outline, title: 'Profile'),
      Menu(icon: Icons.more_horiz, title: 'More'),
    ];
  }
}