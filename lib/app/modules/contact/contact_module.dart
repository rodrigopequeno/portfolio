import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/app/modules/contact/contact_controller.dart';
import 'package:portfolio/app/modules/contact/contact_page.dart';

class ContactModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => ContactController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const ContactPage()),
  ];
}
