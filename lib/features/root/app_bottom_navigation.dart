import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:xtravel/constants/size.dart';
import 'package:xtravel/constants/router.dart';
import 'package:xtravel/features/favorites/presentation/view/view.dart';
import 'package:xtravel/features/home/presentation/view/home_screen_builder.dart';
import 'package:xtravel/features/profile/presentation/view/view.dart';
import 'package:xtravel/features/search/presentation/view/view.dart';

class AppBottomNavigation extends StatelessWidget {
  const AppBottomNavigation({super.key, required this.state});

  final GoRouterState state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: bottomNavigationBarHeight,
        alignment: Alignment.center,
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppBottomNavigationButton(
              isSelected: false,
              icon: const Icon(Icons.home),
              title: 'Home',
              onTap: () {
                debugPrint('onTapHome: ${state.matchedLocation}');
                AppRouter.configs.pushNamed(HomeScreenBuilder.name);
              },
            ),
            AppBottomNavigationButton(
              isSelected: false,
              icon: const Icon(Icons.search),
              title: 'Search',
              onTap: () {
                debugPrint('onTapSearch: ${state.matchedLocation}');
                AppRouter.configs.pushNamed(SearchScreen.name);
              },
            ),
            AppBottomNavigationButton(
              isSelected: false,
              icon: const Icon(Icons.star),
              title: 'Favorites',
              onTap: () {
                debugPrint('onTapFavorites: ${state.matchedLocation}');
                AppRouter.configs.pushNamed(FavoritesScreen.name);
              },
            ),
            AppBottomNavigationButton(
              isSelected: false,
              icon: const Icon(Icons.person),
              title: 'Profile',
              onTap: () {
                debugPrint('onTapProfile: ${state.matchedLocation}');
                AppRouter.configs.pushNamed(ProfileScreen.name);
              },
            )
          ],
        ),
      ),
    );
  }
}

class AppBottomNavigationButton extends StatelessWidget {
  AppBottomNavigationButton({
    super.key,
    required this.isSelected,
    required this.icon,
    required this.title,
    this.onTap,
  });

  final bool isSelected;
  final Widget icon;
  final String title;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [icon, Text(title)],
      ),
    );
  }
}
