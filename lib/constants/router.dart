import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:xtravel/features/auth/registration/presentation/view/view.dart';
import 'package:xtravel/features/countryInfo/presentation/view/view.dart';
import 'package:xtravel/features/home/presentation/view/home_screen.dart';
import 'package:xtravel/features/profile/presentation/view/profile_wrapper_screen.dart';
import 'package:xtravel/features/root/app_root.dart';

import '../features/favorites/presentation/view/favorites_screen.dart';

class AppRouter {
  static final _navigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<StatefulNavigationShellState>();

  static final configs = GoRouter(
      navigatorKey: _navigatorKey,
      initialLocation: HomeScreen.path,
      routes: <RouteBase>[
        StatefulShellRoute.indexedStack(
            key: _shellNavigatorKey,
            builder: (context, state, navigationShell) =>
                AppRoot(navigationshell: navigationShell),
            branches: [
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    path: HomeScreen.path,
                    name: HomeScreen.name,
                    builder: (context, state) => const HomeScreen(),
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
                    path: ProfileWrapperScreen.path,
                    name: ProfileWrapperScreen.name,
                    builder: (context, state) => const ProfileWrapperScreen(),
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
