import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/app/feature/translation/app_localizations.dart';
import 'package:portfolio/app/feature/translation/supported_locales.dart';
import 'package:portfolio/app/shared/components/custom_drawer/custom_drawer_controller.dart';
import 'package:portfolio/app/shared/settings/settings_controller.dart';

class CustomDrawerWidget extends StatelessWidget {
  final CustomDrawerController controller = CustomDrawerController();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme.titleMedium!;
    final size = MediaQuery.of(context).size;

    return Drawer(
      child: Container(
        color: Theme.of(context).primaryColor,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(child: Container()),
            Center(
              child: InkWell(
                onTap: controller.goAbout,
                child: Text(
                  AppLocalizations.of(context)!.about,
                  style: textTheme,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: InkWell(
                  onTap: controller.goPortfolio,
                  child: Text(
                    AppLocalizations.of(context)!.portfolio,
                    style: textTheme,
                  ),
                ),
              ),
            ),
            Center(
              child: InkWell(
                onTap: controller.goContact,
                child: Text(
                  AppLocalizations.of(context)!.contactAppBar,
                  style: textTheme,
                ),
              ),
            ),
            Expanded(child: Container()),
            Padding(
              padding: const EdgeInsets.all(10),
              child: _languages(context, textTheme),
            )
          ],
        ),
      ),
    );
  }

  Widget _languages(BuildContext context, TextStyle textTheme) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            InkWell(
              onTap: () {
                Modular.get<SettingsController>()
                    .setLocaleSelected(SupportedLocale.brazilianPortuguese);
              },
              child: Image.asset(
                'assets/images/br.png',
                width: 30,
              ),
            ),
            InkWell(
              onTap: () {
                Modular.get<SettingsController>()
                    .setLocaleSelected(SupportedLocale.americanEnglish);
              },
              child: Image.asset(
                'assets/images/en.png',
                width: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
