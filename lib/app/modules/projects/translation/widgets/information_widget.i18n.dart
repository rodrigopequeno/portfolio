import 'package:i18n_extension/i18n_extension.dart';
import '../../../../shared/utils/translation/constants.dart';

extension Localization on String {
  static final _t = Translations(kENUS) +
      {
        kENUS: "Sorry",
        kPTBR: "Desculpa",
      } +
      {
        kENUS:
            """I didn't have the opportunity to develop\nsomething really ready to put here,\nbut I have some projects on github\nthat I developed during my studies and\nI would love for you to take a look.""",
        kPTBR:
            """Não tive a oportunidade de desenvolver algo\nrealmente pronto para colocar aqui,\nmas tenho alguns projetos no github\nque desenvolvi durante meus estudos e\nadoraria que você desse uma olhada.""",
      };

  String get i18n => localize(this, _t);
}
