import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/app/feature/translation/app_localizations.dart';
import 'package:portfolio/app/modules/contact/contact_controller.dart';
import 'package:portfolio/app/modules/contact/utils/contacts.dart';
import 'package:portfolio/app/shared/components/custom_app_bar/custom_app_bar_widget.dart';
import 'package:portfolio/app/shared/components/custom_drawer/custom_drawer_widget.dart';

class ContactPage extends StatefulWidget {
  final String title;
  const ContactPage({Key? key, this.title = "Contact"}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends ModularState<ContactPage, ContactController> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState?.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffoldKey,
      endDrawer: CustomDrawerWidget(),
      body: Container(
        color: Theme.of(context).primaryColor,
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CustomAppBarWidget(openDrawer: _openDrawer),
            SizedBox(
              width: size.width * 0.8,
              height: size.height * 0.5,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        AppLocalizations.of(context)!.contactTitle,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Text(
                        AppLocalizations.of(context)!.contactSubtitle,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 80),
                        child: Row(
                          children: Contacts.values
                              .map(
                                (e) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 55,
                                  ),
                                  child: InkWell(
                                    child: Image.asset(
                                      'assets/images/${e.fileName}',
                                      width: 80,
                                    ),
                                    onTap: () async {
                                      log(e.link);
                                      await controller.launchURL(e);
                                    },
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
