import 'package:flutter/material.dart';
import 'package:xtravel/features/countryInfo/presentation/widgets/widgets.dart';

class CountryInfoScreen extends StatelessWidget {
  const CountryInfoScreen({super.key, required this.mainImageUrl});

  final String mainImageUrl;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: [
        CountryInfoTopPart(mainImageUrl: mainImageUrl),
      ],
    );
  }
}
