import 'package:flutter/material.dart';

//ignore: public_member_api_docs
class ProjectsController {
  final ScrollController scrollController = ScrollController();

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

  void dispose() {
    scrollController.dispose();
  }
}
