import 'package:get/get.dart';
import 'package:my_local/app/domain/data/api_helper.dart';
import 'package:my_local/app/domain/errors/api_interface_controller.dart';
import 'package:my_local/app/domain/repositories/home/home_repository_imp.dart';
import 'package:my_local/app/domain/repositories/home/i_home_repository.dart';
import 'package:my_local/app/features/controller/home/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ApiInterfaceController());
    Get.lazyPut<ApiHelper>(() => ApiHelper());
    Get.lazyPut<IHomeRepository>(() => HomeRepository(apiHelper: Get.find()));
    Get.lazyPut(() => HomeController());
  }

}