import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/app/feature/translation/app_localizations.dart';
import 'package:portfolio/app/feature/translation/supported_locales.dart';
import 'package:portfolio/app/shared/components/custom_app_bar/custom_app_bar_controller.dart';
import 'package:portfolio/app/shared/settings/settings_controller.dart';

class CustomAppBarWidget extends StatelessWidget {
  final CustomAppBarController controller = CustomAppBarController();
  final void Function() openDrawer;
  CustomAppBarWidget({
    super.key,
    required this.openDrawer,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme.titleMedium!;
    final size = MediaQuery.of(context).size;
    if (size.width < 710) {
      return Container(
        color: Theme.of(context).primaryColor,
        height: 100,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InkWell(
                onTap: controller.goAbout,
                child: const FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "RP",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontFamily: 'Exotc350 Bd BT',
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: openDrawer,
                ),
              ),
            ],
          ),
        ),
      );
    }
    return Container(
      color: Theme.of(context).primaryColor,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            InkWell(
              onTap: controller.goAbout,
              child: const FittedBox(
                fit: BoxFit.scaleDown,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "RP",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontFamily: 'Exotc350 Bd BT',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: size.width - 200,
              child: Align(
                alignment: Alignment.centerRight,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  reverse: true,
                  children: <Widget>[
                    _languages(context, textTheme),
                    Center(
                      child: InkWell(
                        onTap: controller.goContact,
                        child: Text(
                          AppLocalizations.of(context)!.contactAppBar,
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
                        onTap: controller.goAbout,
                        child: Text(
                          AppLocalizations.of(context)!.about,
                          style: textTheme,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
