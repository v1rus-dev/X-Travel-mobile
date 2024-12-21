import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key, required this.navigationshell});

  final StatefulNavigationShell navigationshell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        tabBackgroundGradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.lightBlue[100]!, Colors.cyan],
        ),
        gap: 8,
        tabBorderRadius: 15,
        color: Colors.grey[600],
        activeColor: Colors.white,
        iconSize: 24,
        textStyle: const TextStyle(fontSize: 14, color: Colors.white),
        tabBackgroundColor: Colors.grey[800]!,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16.5),
        duration: const Duration(milliseconds: 350),
        tabMargin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        onTabChange: (value) => navigationshell.goBranch(value),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.search,
            text: 'Search',
          ),
          GButton(
            icon: Icons.favorite,
            text: 'Favorite',
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
          )
        ],
      ),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 10000),
        child: navigationshell,
      ),
    );
  }
}
