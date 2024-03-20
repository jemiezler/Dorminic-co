import 'package:dorminic_co/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardController extends GetxController {
  static OnBoardController get instance => Get.find();

  //variable
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  //update
  void updatePageIndicator(index) => currentPageIndex.value = index;

  //dot selector
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  //update current index&jump to next page
  void nextPage() {
    if (currentPageIndex.value == 1) {
      // Get To Login Screen
      Get.offAll(() => const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.animateToPage(
        page,duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,);
    }
  }

  
  //update current index&jump to last page
  void skipPage(){
    currentPageIndex.value = 1;
    pageController.jumpToPage(1);
  }
}