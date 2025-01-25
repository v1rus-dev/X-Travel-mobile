import 'package:flutter/material.dart';
import 'package:xtravel/constants/resources/resources.dart';

class AppButtonSuccess extends StatelessWidget {
  AppButtonSuccess({super.key, required this.text, this.onTap});

  final String text;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: Material(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.mainColor,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: onTap,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
