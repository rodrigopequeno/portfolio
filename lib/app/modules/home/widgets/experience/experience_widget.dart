import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/app/feature/translation/app_localizations.dart';

class ExperienceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.portrait) {
      const sizeItems = 225.0;
      return SizedBox(
        width: size.width * 0.8,
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: <Widget>[
            _image(sizeItems),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 40, left: 40),
              child: _text(context, sizeItems, CrossAxisAlignment.center),
            )
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
          _text(context, sizeItems, CrossAxisAlignment.start)
        ],
      ),
    );
  }

  Widget _image(double sizeItems) {
    return SvgPicture.asset(
      'assets/images/experience.svg',
      width: sizeItems,
      height: sizeItems,
    );
  }

  Widget _text(
    BuildContext context,
    double sizeItems,
    CrossAxisAlignment crossAxisAlignment,
  ) {
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
              AppLocalizations.of(context)!.developerMobileFlutter,
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              AppLocalizations.of(context)!.ambevTechTitle,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              AppLocalizations.of(context)!.developerMobileFlutter,
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              AppLocalizations.of(context)!.ephromTitle,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              AppLocalizations.of(context)!.developerMobileFlutter,
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              AppLocalizations.of(context)!.freelancerTitle,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              AppLocalizations.of(context)!.internOccupation,
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              AppLocalizations.of(context)!.internTitle,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}
