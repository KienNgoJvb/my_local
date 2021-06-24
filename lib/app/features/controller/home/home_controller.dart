import 'package:get/get.dart';
import 'package:my_local/app/domain/repositories/home/i_home_repository.dart';
import 'package:my_local/app/core/utils/extensions.dart';

class HomeController extends GetxController {
  // Variable
  final RxList _dataList = RxList();
  final IHomeRepository iHomeRepository = Get.find();

  // Getter Setter
  List<dynamic> get dataList => _dataList;
  set dataList(List<dynamic> dataList) => _dataList.addAll(dataList);

  /// Function
  // Get Posts
  void getPosts() {
    iHomeRepository.getPosts().futureValue(
          (dynamic value) => dataList = value,
      retryFunction: getPosts,
    );
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    getPosts();
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