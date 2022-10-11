import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Welcome/components/splash_content.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

import '../../../constants.dart';

class SplashController extends GetxController {
  int curPageIndex = 0;

  final pages=[
    const SplashContent(text:"Welcome to ELEME" , image: "assets/images/splash_1.png"),
  const SplashContent(text:"Welcome to ELEME" , image: "assets/images/splash_2.png"),
  const SplashContent(text:"Welcome to ELEME" , image: "assets/images/splash_3.png")
  ];
  late final pageController;
  @override
  void onInit() {
    // TODO: implement onInit
    pageController = PageController(initialPage: 0);
    super.onInit();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    pageController.dispose();
    super.dispose();
  }

  void navigateToPage(int pageIndex) {
    pageController.animateToPage(pageIndex,
        duration: HAnimationDuration, curve: Curves.ease);
    if ((pageIndex - curPageIndex).abs() == 2) {
      Future.delayed(const Duration(milliseconds: 400), () {
        curPageIndex = pageIndex;
        update();
      });
    }
  }

  void setCurPageIndex(int value) {
    curPageIndex = value;
    update();
  }

}