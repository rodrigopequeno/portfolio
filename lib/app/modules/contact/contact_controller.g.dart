// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ContactController on _ContactControllerBase, Store {
  final _$launchURLAsyncAction =
      AsyncAction('_ContactControllerBase.launchURL');

  @override
  Future launchURL(String typeContact) {
    return _$launchURLAsyncAction.run(() => super.launchURL(typeContact));
  }

  final _$_ContactControllerBaseActionController =
      ActionController(name: '_ContactControllerBase');

  @override
  List<String> getTypesContact() {
    final _$actionInfo = _$_ContactControllerBaseActionController.startAction(
        name: '_ContactControllerBase.getTypesContact');
    try {
      return super.getTypesContact();
    } finally {
      _$_ContactControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
