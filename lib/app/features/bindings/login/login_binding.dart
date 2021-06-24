import 'package:get/get.dart';
import 'package:my_local/app/features/controller/login/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => LoginController());
  }

}