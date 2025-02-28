import 'package:flutter/material.dart';

class ThemeSettings {
  static ThemeData ligthTheme() {
    final theme = ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme(
            brightness: Brightness.light,
            primary: Colors.red,
            onPrimary: Colors.amber,
            secondary: Colors.amber,
            onSecondary: Colors.amber,
            error: Colors.amber,
            onError: Colors.amber,
            surface: Colors.black,
            onSurface: Colors.amber));
    return theme;
  }

  static ThemeData darkTheme() {
    final theme = ThemeData.dark().copyWith(
        colorScheme: ColorScheme(
            brightness: Brightness.dark,
            primary: Colors.red,
            onPrimary: Colors.amber,
            secondary: Colors.amber,
            onSecondary: Colors.amber,
            error: Colors.amber,
            onError: Colors.amber,
            surface: Colors.black,
            onSurface: Colors.amber));
    return theme;
  }
}
