import 'package:e_commerce_app_with_firebase/features/authentication/screens/login/login.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


class OnboardingController extends GetxController{

  static OnboardingController get instance => Get.find();

  //variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;


  //update current index when page scroll
  void updatePageIndicator(index){
    currentPageIndex.value = index; 
  }


  //jump to the specific dot seleted page
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  //update current index and jump to the next page
  void nextPage() {
    if(currentPageIndex.value == 2){
      final storage = GetStorage();
      storage.write('isFirstTime', false);
      Get.to(() => const LoginScreen());
    }else{
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }

  }

  //update current index and jump to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }

}