import 'package:flutter/material.dart';
import '../../../../shared/utils/plataform_svg.dart';

class EducationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (size.width < 925) {
      final sizeItems = 225.0;
      return ListView(
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          PlatformSvg.asset(
            'assets/images/education.svg',
            width: sizeItems,
            height: sizeItems,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 40, left: 40),
            child: SizedBox(
              width: sizeItems * 0.8,
              height: sizeItems * 0.8,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Bachelor of computer engineering',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Text(
                      """Federal University of Sergipe, 16' """,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Mechanical technician',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Text(
                      """National Industrial Learning Service, 14' - 16'""",
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
            'assets/images/education.svg',
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Bachelor of computer engineering',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Text(
                    """Federal University of Sergipe, 16' """,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Mechanical technician',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Text(
                    """National Industrial Learning Service, 14' - 16'""",
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
