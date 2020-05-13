import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

//ignore: public_member_api_docs
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
