import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:xtravel/features/home/presentation/bloc/countries/home_countries_bloc.dart';
import 'package:xtravel/features/home/presentation/widgets/list_of_countries.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      physics: const AlwaysScrollableScrollPhysics(),
      slivers: [
        SliverPinnedHeader(
          child: Container(
            height: 60,
            decoration: const BoxDecoration(color: Colors.white),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    "XTravel",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        const ListOfCountries(),
        SliverToBoxAdapter(
          child: Row(
            children: [
              TextButton(
                  onPressed: () {
                    context
                        .read<HomeCountriesBloc>()
                        .add(HomeCountriesUpdateEvent());
                  },
                  child: const Text("Load"))
            ],
          ),
        ),
        SliverList.builder(
            itemCount: 100,
            itemBuilder: (context, index) => Container(
                  color: Colors.amber,
                  child: Row(
                    children: [
                      const Gap(20),
                      Text(
                        'Index: $index',
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                ))
      ],
    );
  }
}
