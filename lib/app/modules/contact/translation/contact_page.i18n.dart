import 'package:i18n_extension/i18n_extension.dart';
import '../../../shared/utils/translation/constants.dart';

extension Localization on String {
  static final _t = Translations(kENUS) +
      {
        kENUS: "Contact",
        kPTBR: "Contato",
      } +
      {
        kENUS: "Have a question or want\nto work together?",
        kPTBR: "Tem uma pergunta ou quer\ntrabalhar juntos?",
      };

  String get i18n => localize(this, _t);
}
