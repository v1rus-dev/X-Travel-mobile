import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CountryInfoTopPart extends StatelessWidget {
  const CountryInfoTopPart({super.key, required this.mainImageUrl});

  final String mainImageUrl;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Material(
        child: SizedBox(
          height: 400,
          child: Hero(
              tag: mainImageUrl,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(40)),
                child: CachedNetworkImage(
                  imageUrl: mainImageUrl,
                  fit: BoxFit.cover,
                ),
              )),
        ),
      ),
    ));
  }
}
