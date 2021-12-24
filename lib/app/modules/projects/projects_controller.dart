import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'projects_controller.g.dart';

class ProjectsController = _ProjectsControllerBase with _$ProjectsController;

abstract class _ProjectsControllerBase with Store {
  ScrollController scrollController = ScrollController();

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
}
