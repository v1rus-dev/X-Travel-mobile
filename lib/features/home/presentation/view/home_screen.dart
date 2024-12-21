import 'package:flutter/material.dart';
import 'package:xtravel/features/home/presentation/bloc/home_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String path = '/';
  static const String name = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final HomeBloc homeBloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
      body: const Column(children: [Text('Home screen')],),
    );
  }
}