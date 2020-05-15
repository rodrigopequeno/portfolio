import 'package:i18n_extension/i18n_extension.dart';
import '../../../shared/utils/translation/constants.dart';

extension Localization on String {
  static final _t = Translations(kENUS) +
      {
        kENUS: "I'm Rodrigo",
        kPTBR: "Eu sou Rodrigo",
      } +
      {
        kENUS: "a mobile devoloper",
        kPTBR: "um desenvolvedor mobile",
      };

  String get i18n => localize(this, _t);
}
