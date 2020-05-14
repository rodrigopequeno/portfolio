import 'package:flutter_modular/flutter_modular.dart';

import 'contact_controller.dart';
import 'contact_page.dart';

class ContactModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ContactController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => ContactPage()),
      ];

  static Inject get to => Inject<ContactModule>.of();
}
