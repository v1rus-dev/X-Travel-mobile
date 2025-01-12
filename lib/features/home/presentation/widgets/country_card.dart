import 'package:flutter/material.dart';
import 'package:xtravel/features/home/domain/entity/country.dart';

// ignore: must_be_immutable
class CountryCard extends StatelessWidget {
  CountryCard({super.key, required this.country, this.onTap});

  final Country country;
  void Function(Country)? onTap;

  @override
  Widget build(BuildContext context) => Container(
        width: 260,
        height: 140,
        child: Material(
          child: InkWell(
            child: Stack(
              children: [
                Image.network(
                  country.imageUrl,
                  fit: BoxFit.cover,
                )
              ],
            ),
          ),
        ),
      );

  // @override
  // Widget build(BuildContext context) {
  //   return SizedBox(
  //     width: 260,
  //     child: Hero(
  //       tag: country.imageUrl,
  //       child: Material(
  //         color: Colors.transparent,
  //         borderRadius: BorderRadius.circular(16),
  //         child: Stack(
  //           children: [
  //             Ink(
  //               decoration: BoxDecoration(
  //                   borderRadius: BorderRadius.circular(16),
  //                   image: DecorationImage(
  //                       image: CachedNetworkImageProvider(country.imageUrl,
  //                           cacheKey: country.imageUrl),
  //                       fit: BoxFit.cover)),
  //               child: InkWell(
  //                 borderRadius: BorderRadius.circular(16),
  //                 highlightColor: Colors.grey[200]?.withAlpha(40),
  //                 splashColor: Colors.grey[200]?.withAlpha(40),
  //                 onTap: () {
  //                   onTap?.call(country);
  //                 },
  //               ),
  //             ),
  //             Column(
  //               mainAxisAlignment: MainAxisAlignment.end,
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Padding(
  //                   padding: const EdgeInsets.symmetric(
  //                       horizontal: 16, vertical: 12),
  //                   child: Text(
  //                     country.countryName,
  //                     style: const TextStyle(
  //                         fontSize: 32,
  //                         color: Colors.white,
  //                         fontWeight: FontWeight.bold),
  //                   ),
  //                 )
  //               ],
  //             )
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
