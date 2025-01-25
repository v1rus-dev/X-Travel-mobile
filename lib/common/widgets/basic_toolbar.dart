import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:xtravel/constants/resources/resources.dart';

class BasicToolbar extends StatelessWidget implements PreferredSizeWidget {
  BasicToolbar({
    super.key,
    required this.text,
    this.withBackButton = false,
    this.onTap,
  });

  final String text;
  final bool withBackButton;
  VoidCallback? onTap;

  static const double _height = 56;

  onBack(BuildContext context) {
    if (onTap != null) {
      onTap?.call();
    } else {
      context.pop();
    }
  }

  Widget buildMain(BuildContext context) => SafeArea(
        child: SizedBox(
          height: _height,
          child: Row(
            children: [
              const Gap(20),
              Text(
                text,
                style:
                    const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      );

  Widget buildWithBackButton(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: SizedBox(
        height: _height,
        child: Row(
          children: [
            const Gap(8),
            IconButton(
              onPressed: () {
                onBack(context);
              },
              iconSize: 24,
              splashRadius: 24,
              icon: SvgPicture.asset(ImagesConstants.backIcon),
            ),
            const Gap(20),
            Text(
              text,
              style: theme.textTheme.titleLarge,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) =>
      withBackButton ? buildWithBackButton(context) : buildMain(context);

  @override
  Size get preferredSize => const Size.fromHeight(_height);
}
