import 'package:flutter/material.dart';
import 'package:portfolio/app/feature/translation/app_localizations.dart';
import 'package:portfolio/app/modules/home/widgets/about/about_widget.dart';
import 'package:portfolio/app/modules/home/widgets/education/education_widget.dart';
import 'package:portfolio/app/modules/home/widgets/experience/experience_widget.dart';
import 'package:portfolio/app/modules/home/widgets/skill/skill_widget.dart';

enum SubTabHome { about, skill, education, experience }

extension SubTabHomeExtension on SubTabHome {
  String title(BuildContext context) {
    switch (this) {
      case SubTabHome.about:
        return AppLocalizations.of(context)!.about;
      case SubTabHome.skill:
        return AppLocalizations.of(context)!.skill;
      case SubTabHome.education:
        return AppLocalizations.of(context)!.education;
      case SubTabHome.experience:
        return AppLocalizations.of(context)!.experience;
    }
  }

  Widget get subTab {
    switch (this) {
      case SubTabHome.about:
        return AboutWidget();
      case SubTabHome.skill:
        return SkillWidget();
      case SubTabHome.education:
        return EducationWidget();
      case SubTabHome.experience:
        return ExperienceWidget();
    }
  }
}
