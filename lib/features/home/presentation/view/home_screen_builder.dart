import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xtravel/common/injection_container.dart';
import 'package:xtravel/features/home/presentation/bloc/cities/cities_bloc.dart';
import 'package:xtravel/features/home/presentation/bloc/countries/home_countries_bloc.dart';
import 'package:xtravel/features/home/presentation/view/home_screen.dart';

class HomeScreenBuilder extends StatefulWidget {
  const HomeScreenBuilder({super.key});

  static const String path = '/';
  static const String name = 'home';

  @override
  State<HomeScreenBuilder> createState() => _HomeScreenBuilderState();
}

class _HomeScreenBuilderState extends State<HomeScreenBuilder> {
  final HomeCountriesBloc homeBloc =
      HomeCountriesBloc(homeRepository: locator());
  final CitiesBloc citiesBloc = CitiesBloc();

  @override
  void initState() {
    homeBloc.add(HomeCountriesUpdateEvent());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => homeBloc,
          ),
          BlocProvider(
            create: (context) => citiesBloc,
          ),
        ],
        child: const Scaffold(
            body: SafeArea(
          child: HomeScreen(),
        )));
  }
}
