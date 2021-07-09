import 'package:get/get.dart';
import 'package:my_local/app/features/ui/login/login_page.dart';
import 'package:my_local/app/features/ui/splash/splash_page.dart';
import 'package:my_local/app/routes/routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = AppRoutes.SPLASH;

  static final routes = [
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => SplashPage()
    ),
  ];
}
