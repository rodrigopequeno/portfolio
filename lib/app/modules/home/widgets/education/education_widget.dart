import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/app/feature/translation/app_localizations.dart';

class EducationWidget extends StatelessWidget {
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
      'assets/images/education.svg',
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
            _buildEducation(
              crossAxisAlignment: crossAxisAlignment,
              context: context,
              title: AppLocalizations.of(context)!.bachelorScienceTitle,
              subTitle: AppLocalizations.of(context)!.bachelorScienceSubtitle,
            ),
            const SizedBox(
              height: 50,
            ),
            _buildEducation(
              crossAxisAlignment: crossAxisAlignment,
              context: context,
              title: AppLocalizations.of(context)!.bachelorEngineeringTitle,
              subTitle:
                  AppLocalizations.of(context)!.bachelorEngineeringSubtitle,
            ),
            const SizedBox(
              height: 50,
            ),
            _buildEducation(
              crossAxisAlignment: crossAxisAlignment,
              context: context,
              title: AppLocalizations.of(context)!.technicianTitle,
              subTitle: AppLocalizations.of(context)!.technicianSubtitle,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEducation({
    required CrossAxisAlignment crossAxisAlignment,
    required BuildContext context,
    required String title,
    required String subTitle,
  }) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
