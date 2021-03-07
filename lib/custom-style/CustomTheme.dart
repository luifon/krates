import 'package:flutter/material.dart';
import 'package:krates/custom-style/CustomColors.dart';

final customTheme = new ThemeData(
  primaryColor: Color(primaryColor),
  scaffoldBackgroundColor: Color(primaryColor),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.white,
    foregroundColor: Color(primaryColor),
  ),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: TextStyle(
      color: Colors.white,
      decorationColor: Colors.white,
    ),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Color(primaryColor),
  ),
);