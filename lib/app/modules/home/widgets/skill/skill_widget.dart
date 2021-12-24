import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:seo_renderer/seo_renderer.dart';

class SkillWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final size = MediaQuery.of(context).size;

    final skills = {
      'Flutter': 95.0,
      'Dart': 90.0,
      'Java': 60.0,
      'Python': 60.0,
      'Kotlin': 40.0,
      'Javascript': 30.0,
      'React': 30.0,
      'HTML/CSS': 30.0,
    };

    return SizedBox(
      width: orientation == Orientation.portrait
          ? size.width * 0.8
          : size.width * 0.5,
      height: size.height * 0.5,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: skills.keys.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: (orientation == Orientation.portrait) ? 3 : 4,
        ),
        itemBuilder: (_, index) {
          final key = skills.keys.toList()[index];
          return FittedBox(
            child: CircularPercentIndicator(
              radius: 120,
              lineWidth: 12,
              animation: true,
              percent: skills[key]! / 100,
              animationDuration: 750,
              center: SvgPicture.asset(
                'assets/images/icon_${key.toLowerCase().replaceAll('/', '_')}.svg',
                width: 50,
                height: 50,
              ),
              footer: TextRenderer(
                text: Text(
                  key,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(fontSize: 24, color: Colors.black),
                ),
              ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: Theme.of(context).primaryColor,
            ),
          );
        },
      ),
    );
  }
}
