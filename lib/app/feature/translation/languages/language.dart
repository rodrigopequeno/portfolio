abstract class Language {
  final String locale;

  Language(this.locale);
}

mixin Pt on Language {
  @override
  String get locale => 'pt';
}

mixin En on Language {
  @override
  String get locale => 'en';
}
