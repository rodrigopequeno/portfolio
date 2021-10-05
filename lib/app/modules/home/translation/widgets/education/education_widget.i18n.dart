import 'package:i18n_extension/i18n_extension.dart';
import '../../../../../shared/utils/translation/constants.dart';

extension Localization on String {
  static final _t = Translations(enUS) +
      {
        enUS: "Bachelor of Computer Science",
        ptBR: "Bacharelando em Ciências da Computação",
      } +
      {
        enUS: """Federal University of Sergipe, 20' """,
        ptBR: """Universidade Federal de Sergipe, 20' """,
      } +
      {
        enUS: "Bachelor of Computer Engineering",
        ptBR: "Bacharelando em Engenharia da Computação",
      } +
      {
        enUS: """Federal University of Sergipe, 16' - 20' (Not finished)""",
        ptBR: """Universidade Federal de Sergipe, 16' - 20' (Não finalizado)""",
      } +
      {
        enUS: "Mechanical Technician",
        ptBR: "Técnico em Mecânica",
      } +
      {
        enUS: """National Industrial Learning Service, 14' - 16'""",
        ptBR: """Serviço Nacional de Aprendizagem Industrial, 14' - 16'""",
      };

  String get i18n => localize(this, _t);
}
