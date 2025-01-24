import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xtravel/common/injection_container.dart';
import 'package:xtravel/common/widgets/basic_toolbar.dart';
import 'package:xtravel/common/widgets/scaffol_wrapper.dart';
import 'package:xtravel/features/home/presentation/bloc/home_bloc.dart';
import 'package:xtravel/features/home/presentation/view/loaded_part.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({super.key});

  static const String path = '/';
  static const String name = 'home';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<HomeBloc>(),
      child: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffoldwrapper(
      appBar: const BasicToolbar(text: "XTravel"),
      body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) => switch (state) {
                HomeInitialState() => const SizedBox.shrink(),
                HomeLoadedError() => const SizedBox.shrink(),
                HomeLoadedState() => HomeScreenLoaded(state: state),
              }),
    );
  }
}
