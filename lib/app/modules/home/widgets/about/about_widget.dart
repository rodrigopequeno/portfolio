import 'package:flutter/material.dart';
import '../../../../shared/utils/plataform_svg.dart';
import '../../translation/widgets/about/about_widget.i18n.dart';

class AboutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.portrait) {
      const sizeItems = 225.0;
      return Container(
        width: size.width * 0.8,
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            _image(sizeItems),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 40, left: 40),
              child: _text(context, sizeItems, CrossAxisAlignment.center,
                  TextAlign.center),
            )
          ],
        ),
      );
    }

    final sizeItems = size.width < 1300 ? size.width * 0.4 : 500;
    return Container(
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _image(sizeItems),
          _text(context, sizeItems, CrossAxisAlignment.start, TextAlign.start),
        ],
      ),
    );
  }

  _image(double sizeItems) {
    return PlatformSvg().asset(
      'assets/images/about.svg',
      width: sizeItems,
      height: sizeItems,
    );
  }

  _text(BuildContext context, double sizeItems,
      CrossAxisAlignment crossAxisAlignment, TextAlign textAlign) {
    return SizedBox(
      width: sizeItems,
      height: sizeItems,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Column(
          crossAxisAlignment: crossAxisAlignment,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hi.'.i18n,
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              '''I am a freelance mobile developer in\nSergipe, BR. I am currently a student\nof computer engineering at the\nFederal University of Sergipe.'''
                  .i18n,
              textAlign: textAlign,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}
