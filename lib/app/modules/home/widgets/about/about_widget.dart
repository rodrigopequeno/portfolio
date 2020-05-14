import 'package:flutter/material.dart';
import '../../../../shared/utils/plataform_svg.dart';

class AboutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (size.width < 925) {
      const sizeItems = 225.0;
      return ListView(
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          PlatformSvg.asset(
            'assets/images/about.svg',
            width: sizeItems,
            height: sizeItems,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 40, left: 40),
            child: SizedBox(
              width: sizeItems,
              height: sizeItems,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Hi.',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Text(
                      '''I am a freelance mobile developer in\nSergipe, BR. I am currently a student\nof computer engineering at the\nFederal University of Sergipe.''',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      );
    }

    final sizeItems = size.width < 1300 ? size.width * 0.4 : 500;
    return Container(
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          PlatformSvg.asset(
            'assets/images/about.svg',
            width: sizeItems,
            height: sizeItems,
          ),
          SizedBox(
            width: sizeItems,
            height: sizeItems,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Hi.',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Text(
                    '''I am a freelance mobile developer in\nSergipe, BR. I am currently a student\nof computer engineering at the\nFederal University of Sergipe.''',
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
