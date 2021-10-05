import 'package:i18n_extension/i18n_extension.dart';

import 'constants.dart';

extension Localization on String {
  static final _t = Translations(enUS) +
      {
        enUS: "contact",
        ptBR: "contato",
      } +
      {
        enUS: "about",
        ptBR: "sobre",
      } +
      {
        enUS: "portfolio",
        ptBR: "portfolio",
      };

  String get i18n => localize(this, _t);
}
