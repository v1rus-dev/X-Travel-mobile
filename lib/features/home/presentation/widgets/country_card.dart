import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:xtravel/constants/resources/app_colors.dart';
import 'package:xtravel/features/home/domain/entity/country.dart';

// ignore: must_be_immutable
class CountryCard extends StatefulWidget {
  CountryCard({super.key, required this.country, this.onTap});

  final Country country;
  void Function(Country)? onTap;

  @override
  State<CountryCard> createState() => _CountryCardState();
}

class _CountryCardState extends State<CountryCard>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    final theme = Theme.of(context);

    return SizedBox(
      width: 260,
      height: 140,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.antiAlias,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Hero(
              tag: widget.country.imageUrl,
              child: CachedNetworkImage(
                imageUrl: widget.country.imageUrl,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  width: 260,
                  height: 140,
                  color: Colors.grey.withValues(alpha: 0.3),
                ),
                imageBuilder: (context, imageProvider) => Image(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: AppColors.labelBackground),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 2),
                      child: Text(
                        widget.country.countryName,
                        style: theme.textTheme.bodyLarge?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ),
              )
            ],
          ),
          Positioned.fill(
              child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () {
                widget.onTap?.call(widget.country);
              },
            ),
          ))
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
