import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:xtravel/constants/resources/bottom_app_bar_icons.dart';

class AppRoot extends StatefulWidget {
  const AppRoot({super.key, required this.navigationshell});

  final StatefulNavigationShell navigationshell;

  @override
  State<AppRoot> createState() => _AppRootState();
}

class _AppRootState extends State<AppRoot> {
  Color bottomNavigationButtonColor = const Color(0xFF0651DB);
  final GlobalKey _globalKey = GlobalKey<_AppRootState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        key: _globalKey,
        tabBackgroundGradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [bottomNavigationButtonColor, bottomNavigationButtonColor],
        ),
        gap: 8,
        tabBorderRadius: 16,
        color: Colors.grey[600],
        activeColor: Colors.white,
        iconSize: 24,
        textStyle: const TextStyle(fontSize: 14, color: Colors.white),
        tabBackgroundColor: Colors.grey[800]!,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16.5),
        duration: const Duration(milliseconds: 360),
        tabMargin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        onTabChange: (value) => widget.navigationshell.goBranch(value),
        tabs: const [
          GButton(
            key: Key("HomeButton"),
            icon: BottomAppBarIcons.icHomeFilled,
            text: 'Home',
          ),
          GButton(
            key: Key("FavoriteButton"),
            icon: BottomAppBarIcons.icFavoriteFilled,
            text: 'Favorites',
          ),
          GButton(
            key: Key("ProfileButton"),
            icon: BottomAppBarIcons.icProfileFilled,
            text: 'Profile',
          )
        ],
      ),
      body: widget.navigationshell,
    );
  }
}
