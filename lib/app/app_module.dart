import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_controller.dart';
import 'app_widget.dart';
import 'modules/contact/contact_module.dart';
import 'modules/home/home_module.dart';
import 'modules/projects/projects_module.dart';
import 'shared/components/custom_app_bar/custom_app_bar_controller.dart';
import 'shared/components/custom_drawer/custom_drawer_controller.dart';

//ignore: public_member_api_docs
class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CustomDrawerController()),
        Bind((i) => CustomAppBarController()),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            module: HomeModule(), transition: TransitionType.fadeIn),
        Router('/portfolio',
            module: ProjectsModule(), transition: TransitionType.fadeIn),
        Router('/contact',
            module: ContactModule(), transition: TransitionType.fadeIn),
      ];

  @override
  Widget get bootstrap => AppWidget();

  //ignore: public_member_api_docs
  static Inject get to => Inject<AppModule>.of();
}
