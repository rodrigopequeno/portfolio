import 'package:flutter_modular/flutter_modular.dart';

import 'contact_controller.dart';
import 'contact_page.dart';

class ContactModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => ContactController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => ContactPage()),
  ];
}
