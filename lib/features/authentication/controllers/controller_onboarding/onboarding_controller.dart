import 'package:apna_store/utils/logging/logging.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../screens/login/login.dart';

class OnboardingController extends GetxController{
  static OnboardingController get find => Get.find();
  final PageController pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index){
    currentPageIndex.value = index;
  }


  void doNavigationClick(index){
    AppLogging.debug("doNavigationClick");
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  void nextPage(){
    AppLogging.debug("nextPage");
    if(currentPageIndex.value < 2){
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
    else{
      // navigate to login screen
      Get.offAll(LoginScreen());
    }
  }

  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}