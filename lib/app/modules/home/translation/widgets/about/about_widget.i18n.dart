import 'package:i18n_extension/i18n_extension.dart';
import '../../../../../shared/utils/translation/constants.dart';

extension Localization on String {
  static final _t = Translations(enUS) +
      {
        enUS: "Hi.",
        ptBR: "Olá.",
      } +
      {
        enUS:
            '''I'm a Developer Mobile Flutter\nat Ephrom Business Transformation\nand I'm also studying Computer Science\nat the Federal University of Sergipe''',
        ptBR:
            '''Eu sou desenvolvedor mobile Flutter\nna Ephrom Business Transformation\ne também estou cursando\nCiencias da Computação na\nUniversidade Federal de Sergipe.''',
      };

  String get i18n => localize(this, _t);
}
