import 'package:get/get.dart';
import 'package:my_local/app/domain/errors/api_interface_controller.dart';
import 'package:my_local/app/features/controller/sim_activation_information/sim_activation_information_controller.dart';

class SimActivationInformationBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ApiInterfaceController());
    Get.lazyPut(() => SimActivationInformationController());
  }

}