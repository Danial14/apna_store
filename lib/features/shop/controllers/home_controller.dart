import 'package:get/get.dart';

class HomeController extends GetxController{
  final carosauelCurrentIndex = 0.obs;
  void updatePageIndicator(int index){
    carosauelCurrentIndex.value = index;
  }
}