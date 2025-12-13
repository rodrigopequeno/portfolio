import 'package:flutter_modular/flutter_modular.dart';

//ignore: public_member_api_docs
class CustomAppBarController {
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
