import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

//ignore: public_member_api_docs
class HomeController {
  final ScrollController scrollController = ScrollController();
  final CarouselSliderController carouselController = CarouselSliderController();

  void goDown(double height) {
    try {
      scrollController.animateTo(
        height,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );
    } on Exception catch (_) {}
  }

  void goTop() {
    try {
      scrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );
    } on Exception catch (_) {}
  }

  void goIndex(int index) {
    carouselController.animateToPage(index);
  }

  void dispose() {
    scrollController.dispose();
  }
}
