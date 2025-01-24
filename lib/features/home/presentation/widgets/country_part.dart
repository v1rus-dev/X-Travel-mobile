import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:xtravel/constants/router.dart';
import 'package:xtravel/features/countryInfo/presentation/view/country_info_screen_page.dart';
import 'package:xtravel/features/home/domain/entity/country.dart';
import 'package:xtravel/features/home/presentation/widgets/country_card.dart';

class CountryPart extends StatelessWidget {
  const CountryPart({super.key, required this.countries});

  final List<Country> countries;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Страны",
              style: theme.textTheme.titleLarge,
            ),
          ),
          const Gap(8),
          SizedBox(
            height: 140,
            child: CustomScrollView(
              scrollDirection: Axis.horizontal,
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  sliver: SliverList.separated(
                    itemCount: countries.length,
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 20,
                    ),
                    itemBuilder: (context, index) => CountryCard(
                      key: Key(countries[index].countryId.toString()),
                      country: countries[index],
                      onTap: (country) {
                        AppRouter.configs.pushNamed(CountryInfoScreenPage.name,
                            pathParameters: CountryInfoScreenPage.getPathParams(
                              countryId: country.countryId,
                              mainImageUrl: country.imageUrl,
                            ));
                      },
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
