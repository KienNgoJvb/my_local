import 'package:get/get.dart';
import 'package:my_local/app/domain/errors/api_interface_controller.dart';
import 'package:my_local/app/features/controller/transaction_history/transaction_history_controller.dart';

class TransactionHistoryBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ApiInterfaceController());
    Get.lazyPut(() => TransactionHistoryController());
  }

}