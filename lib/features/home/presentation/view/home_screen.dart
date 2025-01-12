import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xtravel/common/injection_container.dart';
import 'package:xtravel/common/widgets/basic_toolbar.dart';
import 'package:xtravel/features/home/presentation/bloc/cities/cities_bloc.dart';
import 'package:xtravel/features/home/presentation/bloc/countries/home_countries_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String path = '/';
  static const String name = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeCountriesBloc homeBloc =
      HomeCountriesBloc(homeRepository: locator())..add(HomeCountriesUpdateEvent());
  final CitiesBloc citiesBloc = CitiesBloc();
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
      child: SafeArea(
        child: Scaffold(
          appBar: const BasicToolbar(text: "XTravel"),
        ),
      ),
    );
    // return CustomScrollView(
    //   scrollDirection: Axis.vertical,
    //   physics: const AlwaysScrollableScrollPhysics(),
    //   slivers: [
    //     SliverPinnedHeader(
    //       child: Container(
    //         height: 60,
    //         decoration: const BoxDecoration(color: Colors.white),
    //         child: const Padding(
    //           padding: EdgeInsets.symmetric(horizontal: 20),
    //           child: Row(
    //             children: [
    //               Text(
    //                 "XTravel",
    //                 style: TextStyle(
    //                   fontSize: 28,
    //                   fontWeight: FontWeight.bold,
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //       ),
    //     ),
    //     const ListOfCountries(),
    //     SliverToBoxAdapter(
    //       child: Row(
    //         children: [
    //           TextButton(
    //               onPressed: () {
    //                 context
    //                     .read<HomeCountriesBloc>()
    //                     .add(HomeCountriesUpdateEvent());
    //               },
    //               child: const Text("Load"))
    //         ],
    //       ),
    //     ),
    //     SliverList.builder(
    //         itemCount: 100,
    //         itemBuilder: (context, index) => Container(
    //               color: Colors.amber,
    //               child: Row(
    //                 children: [
    //                   const Gap(20),
    //                   Text(
    //                     'Index: $index',
    //                     style: const TextStyle(
    //                         fontSize: 16, fontWeight: FontWeight.normal),
    //                   )
    //                 ],
    //               ),
    //             ))
    //   ],
    // );
  }
}
