import 'package:i18n_extension/i18n_extension.dart';
import '../../../shared/utils/translation/constants.dart';

extension Localization on String {
  static final _t = Translations(enUS) +
      {
        enUS: "I'm Rodrigo",
        ptBR: "Eu sou Rodrigo",
      } +
      {
        enUS: "a mobile developer",
        ptBR: "um desenvolvedor mobile",
      } +
      {
        enUS: "about",
        ptBR: "sobre",
      } +
      {
        enUS: "skill",
        ptBR: "habilidade",
      } +
      {
        enUS: "education",
        ptBR: "educação",
      } +
      {
        enUS: "experience",
        ptBR: "experiência",
      };

  String get i18n => localize(this, _t);
}
