import 'package:flutter/material.dart';
import '../../../../shared/utils/plataform_svg.dart';
import '../../translation/widgets/information_widget.i18n.dart';

class InformationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.portrait) {
      const sizeItems = 225.0;
      return Expanded(
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            _image(sizeItems),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 40, left: 40),
              child: SizedBox(
                width: sizeItems,
                height: sizeItems,
                child: _text(context, CrossAxisAlignment.center),
              ),
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
          SizedBox(
            width: sizeItems,
            height: sizeItems,
            child: _text(context, CrossAxisAlignment.center),
          )
        ],
      ),
    );
  }

  _image(double sizeItems) {
    return PlatformSvg().asset(
      'assets/images/projects.svg',
      width: sizeItems,
      height: sizeItems,
    );
  }

  _text(BuildContext context, CrossAxisAlignment crossAxisAlignment) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Sorry'.i18n,
            style:
                Theme.of(context).textTheme.headline5.copyWith(fontSize: 100),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            '''I didn't have the opportunity to develop\nsomething really ready to put here,\nbut I have some projects on github\nthat I developed during my studies and\nI would love for you to take a look.'''
                .i18n,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}
