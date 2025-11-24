import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
  static double getAppbarHeight(){
    return kToolbarHeight;
  }
  static double getKeyboardHeight(BuildContext context){
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom;
  }
  static bool isPhysicalDevice(){
    return defaultTargetPlatform == TargetPlatform.android || defaultTargetPlatform == TargetPlatform.iOS;
  }
  static Future<void> hideStatusbar() async{
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }
  static Future<void> showSystemUI() async {
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
  }
  static void vibrate(Duration duration){
    HapticFeedback.vibrate();
    Future.delayed(duration, ()=>HapticFeedback.vibrate());
  }
  static Future<void> setPreferredOrientations(List<DeviceOrientation> orientations) async{
    await SystemChrome.setPreferredOrientations(orientations);
  }
  static Future<bool> hasInternetConnection() async{
    try{
      List<InternetAddress> addresses = await InternetAddress.lookup("example.com");
      return addresses.isNotEmpty && addresses[0].rawAddress.isNotEmpty;
    }
    on SocketException catch(e){
    }
    return false;
  }
  static bool isAndroid(){
    return Platform.isAndroid;
  }
  static bool isIos(){
    return Platform.isIOS;
  }
  static void launchUrl(String url) async{
    if(await canLaunchUrlString(url)){
      await launchUrlString(url);
    }
    else{
      throw "Could not launch $url";
    }
  }
  }