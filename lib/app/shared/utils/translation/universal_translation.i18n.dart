import 'package:i18n_extension/i18n_extension.dart';

import 'constants.dart';

extension Localization on String {
  static final _t = Translations(kENUS) +
      {
        kENUS: "contact",
        kPTBR: "contato",
      } +
      {
        kENUS: "about",
        kPTBR: "sobre",
      } +
      {
        kENUS: "portfolio",
        kPTBR: "portfolio",
      };

  String get i18n => localize(this, _t);
}
