import 'package:portfolio/app/modules/contact/translation/contact_page.translation.dart';
import 'package:portfolio/app/modules/home/translation/home_page.translation.dart';
import 'package:portfolio/app/modules/home/translation/sub_tab_home.translation.dart';
import 'package:portfolio/app/modules/home/translation/widgets/about/about_widget.translation.dart';
import 'package:portfolio/app/modules/home/translation/widgets/education/education_widget.translation.dart';
import 'package:portfolio/app/modules/home/translation/widgets/experience/experience_widget.translation.dart';
import 'package:portfolio/app/modules/projects/translation/projects_page.translation.dart';
import 'package:portfolio/app/modules/projects/translation/widgets/information_widget.translation.dart';
import 'package:portfolio/app/shared/components/custom_app_bar/translation/custom_app_bar.translation.dart';

abstract class AllTranslations
    with
        HomePageTranslation,
        SubTabHomeTranslation,
        AboutWidgetTranslation,
        EducationWidgetTranslation,
        ExperienceWidgetTranslation,
        ContactPageTranslation,
        InformationWidgetTranslation,
        ProjectsPageTranslation,
        CustomAppBarTranslation {}
