import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:my_local/app/features/bindings/home/home_binding.dart';
import 'package:my_local/app/features/bindings/login/login_binding.dart';
import 'package:my_local/app/features/ui/home/home_page.dart';
import 'package:my_local/app/features/ui/login/login_page.dart';
import 'package:my_local/app/routes/routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = AppRoutes.LOGIN;

  static final routes = [
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
  ];
}
