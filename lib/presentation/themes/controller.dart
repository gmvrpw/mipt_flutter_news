import 'package:flutter/material.dart';

class ThemeController extends ChangeNotifier {
  ThemeMode mode = ThemeMode.light;

  void useLight() {
    mode = ThemeMode.light;
    notifyListeners();
  }

  void useDark() {
    mode = ThemeMode.dark;
    notifyListeners();
  }

  void useSystem() {
    mode = ThemeMode.system;
    notifyListeners();
  }
}
