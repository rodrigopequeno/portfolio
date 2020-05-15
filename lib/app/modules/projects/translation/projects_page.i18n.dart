import 'package:i18n_extension/i18n_extension.dart';
import '../../../shared/utils/translation/constants.dart';

extension Localization on String {
  static final _t = Translations(kENUS) +
      {
        kENUS: "Projects",
        kPTBR: "Projetos",
      } +
      {
        kENUS: "A collection of my projects\ndeveloped in recent years.",
        kPTBR: "Uma coleção dos meus projetos\ndesenvolvidos nos últimos anos.",
      };

  String get i18n => localize(this, _t);
}
