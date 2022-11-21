import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService {
  final _box = GetStorage();
  final _isDarkKey = "isDark";

  void _saveThemeToBox(bool isDark) => _box.write(_isDarkKey, isDark);
  bool _loadThemeFromBox() => _box.read(_isDarkKey) ?? false;

  bool get isDark => _loadThemeFromBox();
  ThemeMode get themeMode =>
      _loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light;

  void switchTheme() {
    // if current theme is dark then return light
    // also write opposite of current mode
    Get.changeThemeMode(_loadThemeFromBox() ? ThemeMode.light : ThemeMode.dark);
    _saveThemeToBox(!_loadThemeFromBox());
  }
}
