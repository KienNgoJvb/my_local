import 'package:get/get.dart';

class LoginController extends GetxController {
  // Variable
  RxInt _count = RxInt(0);

  // Getter Setter
  RxInt get count => _count;

  /// Function
  // Increment count
  void incrementCount() {
    this._count ++;
  }

  // Override
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}