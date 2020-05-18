import 'package:mobx/mobx.dart';

part 'app_controller.g.dart';

//ignore: public_member_api_docs
class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
