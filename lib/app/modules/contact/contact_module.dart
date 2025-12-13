import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/app/modules/contact/contact_controller.dart';
import 'package:portfolio/app/modules/contact/contact_page.dart';

class ContactModule extends Module {
  @override
  void binds(Injector i) {
    i.add(ContactController.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(Modular.initialRoute, child: (_) => const ContactPage());
  }
}
