import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:xtravel/constants/router.dart';
import 'package:xtravel/features/countryInfo/presentation/view/country_info_screen_builder.dart';
import 'package:xtravel/features/home/domain/entity/country.dart';
import 'package:xtravel/features/home/presentation/bloc/countries/home_countries_bloc.dart';
import 'package:xtravel/features/home/presentation/widgets/country_card.dart';

class ListOfCountries extends StatelessWidget {
  const ListOfCountries({super.key});

  void _openCountry(Country country) {
    AppRouter.configs.pushNamed(CountryInfoScreenBuilder.name,
        pathParameters: CountryInfoScreenBuilder.getPathParams(
          countryId: country.countryId,
          mainImageUrl: country.imageUrl,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCountriesBloc, HomeCountriesState>(
        builder: (context, state) {
      switch (state) {
        case HomeCountriesInitial():
          return const SliverToBoxAdapter(child: SizedBox.shrink());
        case HomeCountriesLoading():
          return const SliverToBoxAdapter(
            child: SizedBox(
              height: 200,
              child: Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            ),
          );
        case HomeCountriesLoaded():
          return SliverToBoxAdapter(
            child: SizedBox(
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(16),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Countries',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Gap(18),
                  Expanded(
                    child: ListView.separated(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        physics: const AlwaysScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: state.counties.length,
                        separatorBuilder: (context, index) {
                          if (index == (state.counties.length - 1)) {
                            return const SizedBox.shrink();
                          } else {
                            return const SizedBox(width: 16);
                          }
                        },
                        itemBuilder: (context, index) {
                          return CountryCard(
                            key: Key(state.counties[index].countryId.toString()),
                            country: state.counties[index],
                            onTap: _openCountry,
                          );
                        }),
                  ),
                ],
              ),
            ),
          );
      }
    });
  }
}
