import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

//ignore: public_member_api_docs
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  ScrollController scrollController = ScrollController();

  @observable
  CarouselController carouselController = CarouselController();

  @action
  void goDown(double height) {
    try {
      scrollController.animateTo(
        height,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );
    } on Exception catch (_) {}
  }

  @action
  void goTop() {
    try {
      scrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );
    } on Exception catch (_) {}
  }

  @action
  void goIndex(int index) {
    carouselController.animateToPage(index);
  }
}
