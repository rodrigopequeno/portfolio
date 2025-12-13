import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/app/modules/contact/contact_module.dart';
import 'package:portfolio/app/modules/home/home_module.dart';
import 'package:portfolio/app/modules/projects/projects_module.dart';
import 'package:portfolio/app/shared/components/custom_app_bar/custom_app_bar_controller.dart';
import 'package:portfolio/app/shared/components/custom_drawer/custom_drawer_controller.dart';
import 'package:portfolio/app/shared/settings/settings_controller.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    i.addLazySingleton(CustomDrawerController.new);
    i.addLazySingleton(CustomAppBarController.new);
    i.addLazySingleton(SettingsController.new);
  }

  @override
  void routes(RouteManager r) {
    r.module(
      Modular.initialRoute,
      module: HomeModule(),
      transition: TransitionType.fadeIn,
    );
    r.module(
      '/portfolio',
      module: ProjectsModule(),
      transition: TransitionType.fadeIn,
    );
    r.module(
      '/contact',
      module: ContactModule(),
      transition: TransitionType.fadeIn,
    );
  }
}
