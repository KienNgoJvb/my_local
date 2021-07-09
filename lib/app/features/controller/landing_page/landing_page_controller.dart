import 'package:get/get.dart';

class LandingPageController extends GetxController {
  RxInt tabIndex = new RxInt(0);

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}