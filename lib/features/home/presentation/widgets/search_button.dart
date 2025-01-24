import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

// ignore: must_be_immutable
class SearchButton extends StatelessWidget {
  SearchButton({super.key, this.onTap});

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      height: 60,
      child: Material(
        color: Colors.white,
        shape: const RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: Color(0xFFF1F1F1),
            ),
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: onTap,
          child: Row(
            children: [
              const Gap(12),
              Text(
                "Поиск",
                style: theme.textTheme.titleMedium?.copyWith(
                    color: const Color(0xFFD7D7D7),
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
