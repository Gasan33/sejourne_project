import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ProductDetailsController extends GetxController{
  static ProductDetailsController get instance => Get.find();
  /// Variables
  final pageController= PageController();
  Rx<int> currentPageIndex=0.obs;

  /// Update Current Index when Page Scroll
  void updatePageIndicator(index)=> currentPageIndex.value=index;


  /// Jump to the specific dot selected page
  void buttonNavigationClick(index){
    currentPageIndex.value=index;
    pageController.jumpToPage(index);
  }



}