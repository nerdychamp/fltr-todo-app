import 'package:flutter/material.dart';

const Color blue = Color(0xff4e5ae8);
const Color yellow = Color(0xffffb746);
const Color pink = Color(0xffff4667);
const Color white = Colors.white;
const Color darkGrey = Color(0xff121212);
const Color darkPrimaryColor = Color(0xff424242);

const Color primaryColor = blue;

class AppTheme {
  static final lightTheme = ThemeData(
      colorScheme: const ColorScheme.light().copyWith(
        primary: blue,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: blue,
      ),
      brightness: Brightness.light);

  static final darkTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: darkGrey,
    ),
    colorSchemeSeed: blue,
    // scaffoldBackgroundColor: darkGrey,
    brightness: Brightness.dark,
  );
}
