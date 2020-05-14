import 'package:mobx/mobx.dart';

part 'information_controller.g.dart';

class InformationController = _InformationControllerBase
    with _$InformationController;

abstract class _InformationControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
