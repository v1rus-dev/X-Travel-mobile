import 'package:flutter/material.dart';
import 'package:xtravel/constants/app_text_theme.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primarySwatch: Colors.blue,
    cardColor: Colors.white,
    useMaterial3: false,
    textTheme: lightTextTheme,
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    primarySwatch: Colors.blue,
    useMaterial3: false,
    textTheme: darkTextTheme,
  );
}