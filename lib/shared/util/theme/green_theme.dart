import 'package:flutter/material.dart';

ThemeData getGreenTheme() {
  return ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.green,
    ),
    scaffoldBackgroundColor: Colors.green[200],
  );
}
