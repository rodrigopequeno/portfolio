import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/app/feature/translation/app_localizations.dart';
import 'package:portfolio/app/feature/translation/supported_locales.dart';
import 'package:portfolio/app/shared/settings/settings_controller.dart';
import 'package:portfolio/app/shared/theme/app_theme.dart';
import 'package:seo_renderer/seo_renderer.dart';

//ignore: public_member_api_docs
class AppWidget extends StatelessWidget {
  final appTheme = AppTheme();
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return MaterialApp(
          title: 'Rodrigo Pequeno',
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: Modular.get<SettingsController>().localeSelected.locale,
          theme: appTheme(),
          initialRoute: '/',
          navigatorObservers: [
            routeObserver,
          ],
        ).modular();
      },
    );
  }
}
