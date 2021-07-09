import 'package:get/get.dart';
import 'package:my_local/app/domain/errors/api_interface_controller.dart';
import 'package:my_local/app/features/controller/personal_information/personal_information_controller.dart';

class PersonalInformationBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ApiInterfaceController());
    Get.lazyPut(() => PersonalInformationController());
  }

}