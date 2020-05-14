import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'projects_controller.g.dart';

class ProjectsController = _ProjectsControllerBase with _$ProjectsController;

abstract class _ProjectsControllerBase with Store {
  @observable
  ScrollController scrollController = ScrollController();

  @action
  double getPositionScroll() => scrollController.offset;

  @action
  void goDown(double height) => scrollController.animateTo(
        height,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );

  @action
  void goTop() => scrollController.animateTo(
        scrollController.position.minScrollExtent,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );
}
