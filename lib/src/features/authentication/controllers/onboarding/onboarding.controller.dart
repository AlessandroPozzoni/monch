import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // Update Current Index when Page Scroll
  void updatePageIndicator(index) {
    currentPageIndex.value = index;
  }

  // Jump to the specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.animateToPage(index, curve: Curves.fastOutSlowIn, duration: const Duration(milliseconds: 500));
  }

  // Update Current Index and jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      // Get.to(LoginScreen);
    } else {
      int page = currentPageIndex.value + 1;
      pageController.animateToPage(page, curve: Curves.fastOutSlowIn, duration: const Duration(milliseconds: 500));
    }
  }

  // Update Curret Index and jump to the last page
  void skipPages() {
    currentPageIndex.value = 2;
      pageController.animateToPage(2, curve: Curves.fastOutSlowIn, duration: const Duration(milliseconds: 500));
  }
}