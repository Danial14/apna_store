import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class DeviceUtils{
  DeviceUtils._();
  static void hideKeyboard(BuildContext context){
    FocusScope.of(context).unfocus();
  }
  static Future<void> changeStatusBarColor(Color color) async{
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: color
      )
    );
  }
  static Future<bool> isLandscapeOrientation(BuildContext context) async{
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom == 0;
  }
  static Future<bool> isPortraitOrientation(BuildContext context) async{
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom != 0;
  }
  static Future<void> setFullScreen(bool enable) async{
    SystemChrome.setEnabledSystemUIMode(enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge
    );
  }
  static double getScreenHeight(BuildContext context){
    final height = MediaQuery.of(context).size.height;
    return height;
  }
  static double getScreenWidth(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    return width;
  }
  static double getPixelRatio(BuildContext context){
    final pixelRatio = MediaQuery.of(context).devicePixelRatio;
    return pixelRatio;
  }
  static double getStatusBarHeight(BuildContext context){
    final statusBarHeight = MediaQuery.of(context).viewInsets.top;
    return statusBarHeight;
  }
  static double getBottomNavigationBarHeight(BuildContext context){
    return kBottomNavigationBarHeight;
  }
  static Future<bool> isKeyboardVisible(BuildContext context) async{
    final viewInsets = MediaQuery.of(context).viewInsets;
    return viewInsets.bottom > 0;
  }
  }