import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/app/feature/translation/app_localizations.dart';
import 'package:portfolio/app/feature/translation/supported_locales.dart';
import 'package:portfolio/app/shared/settings/settings_controller.dart';
import 'package:portfolio/app/shared/theme/app_theme.dart';

//ignore: public_member_api_docs
class AppWidget extends StatelessWidget {
  final appTheme = AppTheme();

  @override
  Widget build(BuildContext context) {
    final settingsController = Modular.get<SettingsController>();

    return ValueListenableBuilder<SupportedLocale>(
      valueListenable: settingsController.localeSelected,
      builder: (context, selectedLocale, _) {
        return MaterialApp.router(
          title: 'Rodrigo Pequeno',
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: selectedLocale.locale,
          theme: appTheme(),
          routerDelegate: Modular.routerDelegate,
          routeInformationParser: Modular.routeInformationParser,
        );
      },
    );
  }
}
