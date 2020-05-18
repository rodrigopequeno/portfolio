import 'package:i18n_extension/i18n_extension.dart';
import '../../../../../shared/utils/translation/constants.dart';

extension Localization on String {
  static final _t = Translations(kENUS) +
      {
        kENUS: "Bachelor of computer engineering",
        kPTBR: "Bacharelado em Engenharia da Computação",
      } +
      {
        kENUS: """Federal University of Sergipe, 16' """,
        kPTBR: """Universidade Federal de Sergipe, 16' """,
      } +
      {
        kENUS: "Mechanical technician",
        kPTBR: "Técnico em mecânica",
      } +
      {
        kENUS: """National Industrial Learning Service, 14' - 16'""",
        kPTBR: """Serviço Nacional de Aprendizagem Industrial, 14' - 16'""",
      };

  String get i18n => localize(this, _t);
}
