import 'package:flutter/material.dart';
import '../../../../shared/utils/plataform_svg.dart';
import '../../translation/widgets/education/education_widget.i18n.dart';

class EducationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.portrait) {
      final sizeItems = 225.0;
      return Container(
        width: size.width * 0.8,
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            _image(sizeItems),
            Padding(
                padding: const EdgeInsets.only(top: 20, right: 40, left: 40),
                child: _text(context, sizeItems, CrossAxisAlignment.center))
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
          _text(context, sizeItems, CrossAxisAlignment.start)
        ],
      ),
    );
  }

  _image(double sizeItems) {
    return PlatformSvg().asset(
      'assets/images/education.svg',
      width: sizeItems,
      height: sizeItems,
    );
  }

  _text(BuildContext context, double sizeItems,
      CrossAxisAlignment crossAxisAlignment) {
    return SizedBox(
      width: sizeItems,
      height: sizeItems,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Column(
          crossAxisAlignment: crossAxisAlignment,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Bachelor of computer engineering'.i18n,
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              """Federal University of Sergipe, 16' """.i18n,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Mechanical technician'.i18n,
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              """National Industrial Learning Service, 14' - 16'""".i18n,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}
