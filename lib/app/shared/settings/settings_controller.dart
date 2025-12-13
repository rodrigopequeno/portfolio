import 'package:flutter/foundation.dart';
import 'package:portfolio/app/feature/translation/supported_locales.dart';

class SettingsController {
  final ValueNotifier<SupportedLocale> localeSelected =
      ValueNotifier(SupportedLocale.americanEnglish);

  void setLocaleSelected(SupportedLocale supportedLocale) {
    if (supportedLocale == localeSelected.value) return;
    localeSelected.value = supportedLocale;
  }

  void dispose() {
    localeSelected.dispose();
  }
}
