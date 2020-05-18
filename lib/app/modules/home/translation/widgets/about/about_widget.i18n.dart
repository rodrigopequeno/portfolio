import 'package:i18n_extension/i18n_extension.dart';
import '../../../../../shared/utils/translation/constants.dart';

extension Localization on String {
  static final _t = Translations(kENUS) +
      {
        kENUS: "Hi.",
        kPTBR: "Olá.",
      } +
      {
        kENUS:
            '''I am a freelance mobile developer in\nSergipe, BR. I am currently a student\nof computer engineering at the\nFederal University of Sergipe.''',
        kPTBR:
            '''Sou desenvolvedor mobile freelancer em\nSergipe, BR. Atualmente, sou estudante\nde engenharia da computação na\nUniversidade Federal de Sergipe.''',
      };

  String get i18n => localize(this, _t);
}
