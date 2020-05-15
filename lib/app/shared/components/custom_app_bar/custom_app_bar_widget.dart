import 'package:flutter/material.dart';
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
            FittedBox(
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
            Padding(
              padding: const EdgeInsets.only(right: 70),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                    children: <Widget>[
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
