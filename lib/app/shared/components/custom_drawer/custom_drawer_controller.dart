import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'custom_drawer_controller.g.dart';

class CustomDrawerController = _CustomDrawerControllerBase
    with _$CustomDrawerController;

abstract class _CustomDrawerControllerBase with Store {
  void goAbout() {
    Modular.to.pushNamed('/');
  }

  void goPortfolio() {
    Modular.to.pushNamed('/portfolio/');
  }

  void goContact() {
    Modular.to.pushNamed('/contact/');
  }
}
