import 'package:apna_store/utils/theme/custom_theme/texttheme.dart';
import 'package:flutter/material.dart';

class AppTheme{
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    fontFamily: "Poppins",
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTextTheme,
  );
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: "Poppins",
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.darkTextTheme,
  );
}