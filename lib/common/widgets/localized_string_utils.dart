import 'package:flutter/material.dart';

String getLocalizedString(String englishText, String russianText, BuildContext context) {
  // Получаем текущую локаль устройства
  Locale currentLocale = Localizations.localeOf(context);

  // В зависимости от локали, возвращаем нужную строку
  if (currentLocale.languageCode == 'ru') {
    return russianText; // Если локаль русского языка, возвращаем русский текст
  } else {
    return englishText; // В противном случае, возвращаем английский текст
  }
}