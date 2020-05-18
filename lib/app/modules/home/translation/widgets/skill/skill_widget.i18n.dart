import 'package:i18n_extension/i18n_extension.dart';
import '../../../../../shared/utils/translation/constants.dart';

extension Localization on String {
  static final _t = Translations(kENUS);

  String get i18n => localize(this, _t);
}
