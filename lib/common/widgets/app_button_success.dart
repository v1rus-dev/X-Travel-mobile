import 'package:flutter/material.dart';
import 'package:xtravel/constants/resources/resources.dart';

class AppButtonSuccess extends StatelessWidget {
  AppButtonSuccess({
    super.key,
    required this.text,
    this.onTap,
    this.isEnabled = true,
  });

  final String text;
  bool isEnabled;
  VoidCallback? onTap;

  Color get color => isEnabled ? AppColors.mainColor : const Color.fromARGB(255, 219, 219, 219);

  Color get textColor => isEnabled ? Colors.white : const Color.fromARGB(255, 150, 150, 150);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: Material(
        borderRadius: BorderRadius.circular(16),
        color: color,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: isEnabled ? onTap : null,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 16,
                  color: textColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
