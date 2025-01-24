import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xtravel/common/injection_container.dart';
import 'package:xtravel/features/countryInfo/presentation/bloc/country_info_bloc.dart';
import 'package:xtravel/features/countryInfo/presentation/view/country_info_screen.dart';

class CountryInfoScreenPage extends StatelessWidget {
  const CountryInfoScreenPage(
      {super.key, required this.countryId, required this.mainImageUrl});

  static const String path = '/country/:countryId/:mainImageUrl';
  static const String name = 'CountryInfoScreen';

  final String countryId;
  final String mainImageUrl;

  static Map<String, String> getPathParams(
          {required int countryId, required String mainImageUrl}) =>
      {'countryId': '$countryId', 'mainImageUrl': mainImageUrl};

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => CountryInfoBloc(repository: locator()),
        child: CountryInfoScreen(mainImageUrl: mainImageUrl),
      );
}