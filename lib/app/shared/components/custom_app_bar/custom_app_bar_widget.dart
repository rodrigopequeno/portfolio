import 'package:flutter/material.dart';
import 'package:i18n_extension/i18n_widget.dart';
import '../../utils/translation/universal_translation.i18n.dart';

import 'custom_app_bar_controller.dart';

class CustomAppBarWidget extends StatelessWidget {
  final CustomAppBarController controller = CustomAppBarController();
  CustomAppBarWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme.subtitle1;
    return Container(
      color: Theme.of(context).primaryColor,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: controller.goAbout,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
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
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
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
                          'contact'.i18n,
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
                        onTap: controller.goAbout,
                        child: Text(
                          'about'.i18n,
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

  _languages(BuildContext context, TextStyle textTheme) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
