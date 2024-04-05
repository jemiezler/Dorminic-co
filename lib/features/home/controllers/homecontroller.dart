import 'package:get/get.dart';

class HomeController extends GetxController{
  static HomeController get instance => Get.find();

  final carouselSliderCurrentIndex = 0.obs;

  void updatePageIndicator(index){
    carouselSliderCurrentIndex.value = index;
  }
}