import 'package:mobx/mobx.dart';
import 'package:portfolio/app/feature/translation/supported_locales.dart';

part 'settings_controller.g.dart';

class SettingsController = _SettingsControllerBase with _$SettingsController;

abstract class _SettingsControllerBase with Store {
  @observable
  SupportedLocale localeSelected = SupportedLocale.americanEnglish;

  @action
  // ignore: use_setters_to_change_properties
  void setLocaleSelected(SupportedLocale supportedLocale) {
    if (supportedLocale == localeSelected) return;
    localeSelected = supportedLocale;
  }
}
