import 'package:flutter/material.dart';

import 'app_localizations.dart';

// changeAppLanguage(String choice) {
//   var localeSubjectAppLanguage = sl<BehaviorSubject<String>>();
//   localeSubjectAppLanguage.sink.add(choice);
// }

class AppLanguageKeys {
  static const en = 'en';
  static const ar = 'ar';
}

bool directionIsRtl(BuildContext context) {
  return AppLocalizations.of(context).locale.languageCode == AppLanguageKeys.ar;
}

class AppFontFamilies {
  static const englishFontFamily = 'MTNBrighterSans';
  static const arabicFontFamily = 'MTNBrighterSansArabic';
  static const packagesFontFamily = 'Packages';
}

String adaptiveFontFamily(BuildContext context) {
  if (directionIsRtl(context)) {
    return AppFontFamilies.arabicFontFamily;
  } else {
    return AppFontFamilies.englishFontFamily;
  }
}
