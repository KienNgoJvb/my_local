import 'package:get/get.dart';
import 'package:my_local/app/domain/data/api_helper.dart';
import 'package:my_local/app/domain/errors/api_interface_controller.dart';
import 'package:my_local/app/features/controller/login/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ApiInterfaceController());
    Get.lazyPut<ApiHelper>(() => ApiHelper());
    Get.lazyPut(() => LoginController());
  }

}