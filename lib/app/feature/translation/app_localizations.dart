import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:portfolio/app/feature/translation/all_translation.dart';
import 'package:portfolio/app/feature/translation/languages/language.dart';
import 'package:portfolio/app/feature/translation/supported_locales.dart';

part 'app_localizations_delegate.dart';

abstract class AppLocalizations extends AllTranslations implements Language {
  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];

  static List<Locale> supportedLocales =
      SupportedLocale.values.map((e) => e.locale).toList();
}
