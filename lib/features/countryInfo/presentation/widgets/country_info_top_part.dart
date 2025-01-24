import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CountryInfoTopPart extends StatelessWidget {
  const CountryInfoTopPart({super.key, required this.mainImageUrl});

  final String mainImageUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 400,
          width: double.infinity,
          child: Hero(
              tag: mainImageUrl,
              child: CachedNetworkImage(
                imageUrl: mainImageUrl,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  width: double.infinity,
                  height: 400,
                  color: Colors.grey.withValues(alpha: 0.3),
                ),
                imageBuilder: (context, imageProvider) => Image(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              )),
        ),
        Row(
          children: [
            
          ],
        )
      ],
    );
  }
}
