import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/app/feature/translation/app_localizations.dart';
import 'package:portfolio/app/modules/contact/contact_controller.dart';
import 'package:portfolio/app/modules/contact/utils/contacts.dart';
import 'package:seo_renderer/seo_renderer.dart';

class InformationWidget extends StatelessWidget {
  final ContactController controller = ContactController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.portrait) {
      const sizeItems = 225.0;
      return Expanded(
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: <Widget>[
            _image(sizeItems),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 40, left: 40),
              child: SizedBox(
                width: sizeItems,
                height: sizeItems,
                child: _text(context, CrossAxisAlignment.center),
              ),
            ),
          ],
        ),
      );
    }

    final sizeItems = size.width < 1300 ? size.width * 0.4 : 500.0;
    return SizedBox(
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _image(sizeItems),
          SizedBox(
            width: sizeItems,
            height: sizeItems,
            child: _text(context, CrossAxisAlignment.center),
          ),
        ],
      ),
    );
  }

  Widget _image(double sizeItems) {
    return SvgPicture.asset(
      'assets/images/projects.svg',
      width: sizeItems,
      height: sizeItems,
    );
  }

  Widget _text(BuildContext context, CrossAxisAlignment crossAxisAlignment) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextRenderer(
            element: kIsWeb ? HeadingElement.h5() : null,
            text: Text(
              AppLocalizations.of(context)!.informationWidgetTitle,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(fontSize: 100),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          TextRenderer(
            text: Text(
              AppLocalizations.of(context)!.informationWidgetSubtitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          _buttonGitHub(),
        ],
      ),
    );
  }

  Widget _buttonGitHub() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
        width: 300,
        // height: 50,
        child: InkWell(
          child: Image.asset(
            'assets/images/button_github.png',
          ),
          onTap: () async {
            await controller.launchURL(Contacts.github);
          },
        ),
      ),
    );
  }
}
