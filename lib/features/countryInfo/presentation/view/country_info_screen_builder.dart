import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xtravel/common/injection_container.dart';
import 'package:xtravel/features/countryInfo/presentation/bloc/country_info_bloc.dart';
import 'package:xtravel/features/countryInfo/presentation/view/country_info_screen.dart';

class CountryInfoScreenBuilder extends StatefulWidget {
  const CountryInfoScreenBuilder(
      {super.key, required this.countryId, required this.mainImageUrl});

  static const String path = '/country/:countryId/:mainImageUrl';
  static const String name = 'CountryInfoScreen';

  static Map<String, String> getPathParams(
          {required int countryId, required String mainImageUrl}) =>
      {'countryId': '$countryId', 'mainImageUrl': mainImageUrl};

  final String countryId;
  final String mainImageUrl;

  @override
  State<CountryInfoScreenBuilder> createState() =>
      _CountryInfoScreenBuilderState();
}

class _CountryInfoScreenBuilderState extends State<CountryInfoScreenBuilder> {
  final CountryInfoBloc countryInfoBloc =
      CountryInfoBloc(repository: locator());

  @override
  void initState() {
    debugPrint('CountryId: ${widget.countryId}');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => countryInfoBloc)],
      child: Scaffold(
        body: SafeArea(
            child: CountryInfoScreen(
          mainImageUrl: widget.mainImageUrl,
        )),
      ),
    );
  }
}
