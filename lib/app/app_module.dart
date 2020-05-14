import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_controller.dart';
import 'app_widget.dart';
import 'modules/home/home_module.dart';
import 'shared/components/custom_app_bar/custom_app_bar_controller.dart';

//ignore: public_member_api_docs
class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CustomAppBarController()),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  //ignore: public_member_api_docs
  static Inject get to => Inject<AppModule>.of();
}
