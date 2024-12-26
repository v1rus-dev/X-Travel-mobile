import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:xtravel/features/auth/registration/presentation/view/view.dart';
import 'package:xtravel/features/countryInfo/presentation/view/view.dart';
import 'package:xtravel/features/favorites/presentation/view/view.dart';
import 'package:xtravel/features/home/presentation/view/home_screen.dart';
import 'package:xtravel/features/home/presentation/view/home_screen_builder.dart';
import 'package:xtravel/features/profile/presentation/view/profile_screen.dart';
import 'package:xtravel/features/root/app_root.dart';
import 'package:xtravel/features/search/presentation/view/view.dart';

class AppRouter {
  static final _navigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static final configs = GoRouter(
      navigatorKey: _navigatorKey,
      initialLocation: HomeScreenBuilder.path,
      routes: <RouteBase>[
        StatefulShellRoute.indexedStack(
            builder: (context, state, navigationShell) =>
                AppRoot(navigationshell: navigationShell),
            branches: [
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: HomeScreenBuilder.path,
                    name: HomeScreenBuilder.name,
                    builder: (context, state) => const HomeScreenBuilder(),
                  ),
                ],
              ),
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: SearchScreen.path,
                    name: SearchScreen.name,
                    builder: (context, state) => const SearchScreen(),
                  ),
                ],
              ),
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: FavoritesScreen.path,
                    name: FavoritesScreen.name,
                    builder: (context, state) => const FavoritesScreen(),
                  )
                ],
              ),
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: ProfileScreen.path,
                    name: ProfileScreen.name,
                    builder: (context, state) => const ProfileScreen(),
                  )
                ],
              )
            ]),
        GoRoute(
          path: RegistrationScreen.path,
          name: RegistrationScreen.name,
          builder: (context, state) => const RegistrationScreen(),
        ),
        GoRoute(
          path: CountryInfoScreenBuilder.path,
          name: CountryInfoScreenBuilder.name,
          builder: (context, state) => CountryInfoScreenBuilder(
            countryId: state.pathParameters['countryId']!,
            mainImageUrl: state.pathParameters['mainImageUrl']!,
          ),
        )
      ]);
}
