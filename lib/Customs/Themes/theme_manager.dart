import 'package:flutter/material.dart';

class ThemeManager extends ChangeNotifier {
  static ThemeManager instance = ThemeManager();
  ThemeMode _themeMode = ThemeMode.light;
  bool group = false;

  get themeMode => _themeMode;

  togleTheme(bool isDark) {
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
