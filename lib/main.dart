import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:my_local/app/core/constants/app_theme.dart';
import 'package:my_local/app/core/utils/initializer.dart';
import 'package:my_local/app/core/utils/logger.dart';
import 'package:my_local/app/core/values/languages/translation_service.dart';
import 'package:my_local/app/features/controller/home/home_controller.dart';
import 'package:my_local/app/routes/app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  // Init data storage key-value
  await GetStorage.init();

  Initializer.instance.init(() {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Get.create(()=>HomeController());

    // Init screen util from flutter screen
    ScreenUtil.init(
      BoxConstraints(
        maxWidth: Get.width,
        maxHeight: Get.height,
      ),
      designSize: Get.size,
    );

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        // Call this method here to hide soft keyboard
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus!.unfocus();
        }
      },
      child: GetMaterialApp(
        theme: themeData,
        debugShowCheckedModeBanner: false,
        enableLog: true,
        logWriterCallback: Logger.write,
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        locale: TranslationService.locale,
        fallbackLocale: TranslationService.fallbackLocale,
        translations: TranslationService(),
      ),
    );
  }
}