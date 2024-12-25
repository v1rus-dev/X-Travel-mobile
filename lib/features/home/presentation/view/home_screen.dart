import 'package:flutter/material.dart';
import 'package:xtravel/common/injection_container.dart';
import 'package:xtravel/features/home/presentation/bloc/home_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String path = '/';
  static const String name = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeBloc homeBloc = HomeBloc(homeRepository: locator());

  @override
  void initState() {
    homeBloc.add(UpdateHomeEvent());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
      body: SafeArea(
        child: Column(
          children: [
            const Text('Home screen'),
            const SizedBox(
              height: 32,
            ),
            OutlinedButton(
                onPressed: () {
                  homeBloc.add(UpdateHomeEvent());
                },
                child: const Text("Load"))
          ],
        ),
      ),
    );
  }
}
