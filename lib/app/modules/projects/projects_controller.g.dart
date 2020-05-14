// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projects_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProjectsController on _ProjectsControllerBase, Store {
  final _$scrollControllerAtom =
      Atom(name: '_ProjectsControllerBase.scrollController');

  @override
  ScrollController get scrollController {
    _$scrollControllerAtom.reportRead();
    return super.scrollController;
  }

  @override
  set scrollController(ScrollController value) {
    _$scrollControllerAtom.reportWrite(value, super.scrollController, () {
      super.scrollController = value;
    });
  }

  final _$_ProjectsControllerBaseActionController =
      ActionController(name: '_ProjectsControllerBase');

  @override
  double getPositionScroll() {
    final _$actionInfo = _$_ProjectsControllerBaseActionController.startAction(
        name: '_ProjectsControllerBase.getPositionScroll');
    try {
      return super.getPositionScroll();
    } finally {
      _$_ProjectsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void goDown(double height) {
    final _$actionInfo = _$_ProjectsControllerBaseActionController.startAction(
        name: '_ProjectsControllerBase.goDown');
    try {
      return super.goDown(height);
    } finally {
      _$_ProjectsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void goTop() {
    final _$actionInfo = _$_ProjectsControllerBaseActionController.startAction(
        name: '_ProjectsControllerBase.goTop');
    try {
      return super.goTop();
    } finally {
      _$_ProjectsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
scrollController: ${scrollController}
    ''';
  }
}
