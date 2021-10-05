import 'package:i18n_extension/i18n_extension.dart';
import '../../../shared/utils/translation/constants.dart';

extension Localization on String {
  static final _t = Translations(enUS) +
      {
        enUS: "Contact",
        ptBR: "Contato",
      } +
      {
        enUS: "Have a question or want\nto work together?",
        ptBR: "Tem uma pergunta ou quer\ntrabalhar juntos?",
      };

  String get i18n => localize(this, _t);
}
