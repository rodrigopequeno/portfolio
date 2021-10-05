import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'custom_app_bar_controller.g.dart';

class CustomAppBarController = _CustomAppBarControllerBase
    with _$CustomAppBarController;

abstract class _CustomAppBarControllerBase with Store {
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
