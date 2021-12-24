import 'package:flutter/material.dart';

import 'package:portfolio/app/feature/translation/app_localizations.dart';
import 'package:portfolio/app/feature/translation/error/language_unsupported.dart';
import 'package:portfolio/app/feature/translation/languages/app_localizations_en.dart';
import 'package:portfolio/app/feature/translation/languages/app_localizations_pt.dart';

enum SupportedLocale {
  brazilianPortuguese,
  americanEnglish,
}

extension SupportedLocaleExtension on SupportedLocale {
  Locale get locale {
    switch (this) {
      case SupportedLocale.brazilianPortuguese:
        return const Locale('pt', 'BR');
      case SupportedLocale.americanEnglish:
        return const Locale('en', 'US');
    }
  }

  static SupportedLocale fromLocale(Locale locale) {
    return SupportedLocale.values.firstWhere(
      (element) => element.locale.languageCode == locale.languageCode,
      orElse: () => throw LanguageUnsupported(locale),
    );
  }

  static AppLocalizations getAppLocalizationFromLocale(Locale locale) {
    final supportedLocale = fromLocale(locale);

    switch (supportedLocale) {
      case SupportedLocale.brazilianPortuguese:
        return AppLocalizationsPt();
      case SupportedLocale.americanEnglish:
        return AppLocalizationsEn();
    }
  }
}
