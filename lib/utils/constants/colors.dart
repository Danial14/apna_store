import 'package:flutter/material.dart';

class AppColors{
  AppColors._();
  // App basic colors
  static const Color primary = Color(0xff4b68ff);
  static final Color secondary = Color(0xffffe248).withOpacity(0.8);
  static const Color accent = Color(0xffb0c7ff);

  // App text colors
  static const Color textPrimary = Color(0xff333333);
  static const Color textSecondary = Color(0xff6c757d);
  static const Color textWhite = Colors.white;

  // Background colors
  static const Color light = Color(0xfff6f6f6);
  static const Color dark = Color(0xff272727);
  static const Color primaryBackground = Color(0xfff3f5ff);

  // Background container colors
  static const Color lightContainer = Color(0xfff6f6f6);
  static final Color darkContainer = Colors.white.withOpacity(0.1);

  // Button colors
  static const Color primaryButton = Color(0xff4b68ff);
  static const Color secondaryButton = Color(0xff6c757d);
  static const Color disabledButton = Color(0xffc4c4c4);

  // Border colors
  static const Color primaryBorder = Color(0xffd0d0d0);
  static const Color secondaryBorder = Color(0xffe6e6e6);

  // Error and validation colors
  static const Color error = Color(0xffd32f2f);
  static const Color success = Color(0xff388e3c);
  static const Color warning = Color(0xfff57c00);
  static const Color info = Color(0xff197602);

  // Neutral shades
 static const Color black = Color(0xff232323);
 static const Color darkerGrey = Color(0xffe6e6e6);
 static const Color darkGrey = Color(0xff939393);
 static const Color grey = Color(0xffe0e0e0);
 static const Color white = Colors.white;
 static const Color softGrey = Color(0xfff4f4f4);
 static const Color lightGrey = Color(0xfff9f9f9);

 // Gradient
static const LinearGradient gradient = LinearGradient(
  colors: [
    Color(0xffff9a9e),
    Color(0xfffad0c4),
    Color(0xfffad0c4)
  ],
  begin: Alignment(0, 0),
  end: Alignment(0.707, -0.707)
);
}