import 'package:i18n_extension/i18n_extension.dart';
import '../../../../../shared/utils/translation/constants.dart';

extension Localization on String {
  static final _t = Translations(kENUS) +
      {
        kENUS: "Computer Engineering Intern",
        kPTBR: "Estagiário em Engenharia da Computação",
      } +
      {
        kENUS: """Federal University of Sergipe, 19' - 20'""",
        kPTBR: """Universidade Federal de Sergipe, 19' - 20'""",
      };

  String get i18n => localize(this, _t);
}
