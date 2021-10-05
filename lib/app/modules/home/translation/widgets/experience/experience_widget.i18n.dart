import 'package:i18n_extension/i18n_extension.dart';
import '../../../../../shared/utils/translation/constants.dart';

extension Localization on String {
  static final _t = Translations(enUS) +
      {
        enUS: """Ephrom Business Transformation, 21'""",
        ptBR: """Ephrom Business Transformation, 21'""",
      } +
      {
        enUS: "Developer Mobile Flutter",
        ptBR: "Desenvolvedor de aplicativos Flutter",
      } +
      {
        enUS: """Freelancer, 20' - 21'""",
        ptBR: """Desenvolvedor Autônomo, 20' - 21'""",
      } +
      {
        enUS: "Computer Engineering Intern",
        ptBR: "Estagiário em Engenharia da Computação",
      } +
      {
        enUS: """Federal University of Sergipe, 19' - 20'""",
        ptBR: """Universidade Federal de Sergipe, 19' - 20'""",
      };

  String get i18n => localize(this, _t);
}
