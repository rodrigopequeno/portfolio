// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'information_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$InformationController on _InformationControllerBase, Store {
  final _$valueAtom = Atom(name: '_InformationControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_InformationControllerBaseActionController =
      ActionController(name: '_InformationControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_InformationControllerBaseActionController
        .startAction(name: '_InformationControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_InformationControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
