import 'package:flutter/material.dart';
import 'package:i18n_extension/i18n_widget.dart';

import '../../utils/translation/universal_translation.i18n.dart';
import 'custom_drawer_controller.dart';

class CustomDrawerWidget extends StatelessWidget {
  final CustomDrawerController controller = CustomDrawerController();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme.subtitle1;
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
                  'about'.i18n,
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
                    'portfolio'.i18n,
                    style: textTheme,
                  ),
                ),
              ),
            ),
            Center(
              child: InkWell(
                onTap: controller.goContact,
                child: Text(
                  'contact'.i18n,
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

  _languages(BuildContext context, TextStyle textTheme) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            InkWell(
              onTap: () => I18n.of(context).locale = Locale("pt", "BR"),
              child: Image.asset(
                'assets/images/br.png',
                width: 30,
              ),
            ),
            InkWell(
              onTap: () => I18n.of(context).locale = Locale("en", "US"),
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
