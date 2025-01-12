import 'package:flutter/material.dart';
import 'package:xtravel/constants/colors.dart';

class AppTextField extends StatelessWidget {
  AppTextField(
      {super.key,
      required this.controller,
      required this.focusNode,
      this.enterBoldText = false,
      this.label,
      this.hint});

  String? label;
  String? hint;
  bool enterBoldText;
  final TextEditingController controller;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Color(0xFFD7D7D7), fontSize: 16),
        hintText: hint,
        border: const OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: AppColors.mainColor),
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
      ),
      style: TextStyle(
          fontSize: 16,
          fontWeight: enterBoldText ? FontWeight.bold : FontWeight.normal),
      showCursor: true,
      cursorColor: AppColors.mainColor,
      controller: controller,
      focusNode: focusNode,
    );
  }
}
