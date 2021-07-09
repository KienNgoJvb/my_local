import 'package:get/get.dart';
import 'package:my_local/app/domain/errors/api_interface_controller.dart';
import 'package:my_local/app/features/controller/profile_detail/profile_detail_controller.dart';

class ProfileDetailBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ApiInterfaceController());
    Get.lazyPut(() => ProfileDetailController());
  }

}