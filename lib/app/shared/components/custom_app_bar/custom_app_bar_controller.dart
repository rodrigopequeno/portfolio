import 'package:mobx/mobx.dart';

part 'custom_app_bar_controller.g.dart';

class CustomAppBarController = _CustomAppBarControllerBase
    with _$CustomAppBarController;

abstract class _CustomAppBarControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
