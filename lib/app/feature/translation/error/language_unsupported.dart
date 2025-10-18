import 'package:flutter/material.dart';

class LanguageUnsupported implements Exception {
  final Locale locale;

  LanguageUnsupported(this.locale);

  @override
  String toString() {
    return '''AppLocalizations.delegate failed to load unsupported locale "$locale"''';
  }
}
