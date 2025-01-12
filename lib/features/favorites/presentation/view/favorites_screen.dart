import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xtravel/common/widgets/basic_toolbar.dart';
import 'package:xtravel/features/favorites/presentation/bloc/favorites_bloc.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  static const path = '/favorites';
  static const name = 'favorites';

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  final FavoritesBloc bloc = FavoritesBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bloc,
      child: SafeArea(
        child: Scaffold(
          appBar: const BasicToolbar(text: "Избранное"),
        ),
      ),
    );
  }
}
