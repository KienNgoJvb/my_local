import 'package:get/get.dart';
import 'package:my_local/app/domain/errors/api_interface_controller.dart';
import 'package:my_local/app/features/controller/recharge_money_payment/recharge_money_controller.dart';

class RechargeMoneyPaymentBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ApiInterfaceController());
    Get.lazyPut(() => RechargeMoneyPaymentController());
  }

}