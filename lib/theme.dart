import 'package:flutter/material.dart';

class ThemeApp {
  static ThemeData get themeData => ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepPurpleAccent,
          centerTitle: false,
        ),
      );
}
