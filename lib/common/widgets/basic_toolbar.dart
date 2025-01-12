import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BasicToolbar extends StatelessWidget implements PreferredSizeWidget {
  const BasicToolbar(
      {super.key, required this.text, this.withBackButton = false});

  final String text;
  final bool withBackButton;

  static const double _height = 56;

  Widget buildMain(BuildContext context) => SizedBox(
        height: _height,
        child: Row(
          children: [
            const Gap(20),
            Text(
              text,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            )
          ],
        ),
      );

  Widget buildWithBackButton(BuildContext context) => SizedBox(
        height: _height,
        child: Row(
          children: [
            const Gap(20),
            Text(text),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) =>
      withBackButton ? buildWithBackButton(context) : buildMain(context);

  @override
  Size get preferredSize => const Size.fromHeight(_height);
}
