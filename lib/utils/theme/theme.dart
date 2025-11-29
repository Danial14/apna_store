import 'package:apna_store/utils/theme/custom_theme/appbartheme.dart';
import 'package:apna_store/utils/theme/custom_theme/elevatedbuttontheme.dart';
import 'package:apna_store/utils/theme/custom_theme/texttheme.dart';
import 'package:flutter/material.dart';

import 'custom_theme/bottom_sheet_theme.dart';
import 'custom_theme/checkboxtheme.dart';
import 'custom_theme/chiptheme.dart';
import 'custom_theme/inputtextformfieldtheme.dart';
import 'custom_theme/outlinebuttontheme.dart';

class AppTheme{
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    fontFamily: "Poppins",
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTextTheme,
    inputDecorationTheme: AppTextFormFieldTheme.lightTextFormFieldTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: AppOutlineButtonTheme.lightOutlineButtonTheme,
    checkboxTheme: AppCheckboxTheme.lightCheckboxTheme,
    chipTheme: AppChipTheme.lightChipTheme,
    appBarTheme: AppAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
  );
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: "Poppins",
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: AppTextTheme.darkTextTheme,
    inputDecorationTheme: AppTextFormFieldTheme.darkTextFormFieldTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: AppOutlineButtonTheme.darkOutlineButtonTheme,
    checkboxTheme: AppCheckboxTheme.darkCheckboxTheme,
    chipTheme: AppChipTheme.darkChipTheme,
    appBarTheme: AppAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
  );
}