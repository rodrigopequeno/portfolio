import 'package:flutter_modular/flutter_modular.dart';

import 'home_controller.dart';
import 'home_page.dart';

//ignore: public_member_api_docs
class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  //ignore: public_member_api_docs
  static Inject get to => Inject<HomeModule>.of();
}
