import 'package:get/get.dart';
import 'package:my_local/app/features/controller/home/home_controller.dart';
import 'package:my_local/app/features/controller/landing_page/landing_page_controller.dart';

class LandingPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LandingPageController>(() => LandingPageController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}