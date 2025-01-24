import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:xtravel/features/home/presentation/bloc/home_bloc.dart';
import 'package:xtravel/features/home/presentation/widgets/country_part.dart';
import 'package:xtravel/features/home/presentation/widgets/search_button.dart';

class HomeScreenLoaded extends StatelessWidget {
  const HomeScreenLoaded({super.key, required this.state});

  final HomeLoadedState state;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: [
        const SliverGap(10),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          sliver: SliverToBoxAdapter(
            child: SearchButton(
              onTap: () {},
            ),
          ),
        ),
        const SliverGap(10),
        CountryPart(countries: state.countries)
      ],
    );
  }
}
