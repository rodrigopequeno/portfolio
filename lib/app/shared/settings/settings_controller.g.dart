// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SettingsController on _SettingsControllerBase, Store {
  final _$localeSelectedAtom =
      Atom(name: '_SettingsControllerBase.localeSelected');

  @override
  SupportedLocale get localeSelected {
    _$localeSelectedAtom.reportRead();
    return super.localeSelected;
  }

  @override
  set localeSelected(SupportedLocale value) {
    _$localeSelectedAtom.reportWrite(value, super.localeSelected, () {
      super.localeSelected = value;
    });
  }

  final _$_SettingsControllerBaseActionController =
      ActionController(name: '_SettingsControllerBase');

  @override
  void setLocaleSelected(SupportedLocale supportedLocale) {
    final _$actionInfo = _$_SettingsControllerBaseActionController.startAction(
        name: '_SettingsControllerBase.setLocaleSelected');
    try {
      return super.setLocaleSelected(supportedLocale);
    } finally {
      _$_SettingsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
localeSelected: ${localeSelected}
    ''';
  }
}
