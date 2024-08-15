import 'package:flutter/material.dart';

extension ContextUtils on BuildContext 
{
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  ThemeData get theme => Theme.of(this);

  EdgeInsets get padding => MediaQuery.paddingOf(this);

  void removeFocus() {
    final FocusScopeNode currentScope = FocusScope.of(this);
    if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }
}

extension NullOrEmptyString on String? {
  bool get isNullOrEmpty {
    return (this ?? '').isEmpty;
  }

  bool get isNotNullOrEmpty {
    return (this ?? '').isNotEmpty;
  }

  bool get isNullOrEmptyTrim {
    return (this ?? '').trim().isEmpty;
  }

  bool get isNotNullOrEmptyTrim {
    return (this ?? '').trim().isNotEmpty;
  }
}

extension Nullabilty on Object? {
  bool get isNull => this == null;
  bool get isNotNull => this != null;
}