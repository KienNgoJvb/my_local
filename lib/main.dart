import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_local/app/core/constants/app_theme.dart';
import 'package:my_local/app/core/utils/logger.dart';
import 'package:my_local/app/core/values/languages/translation_service.dart';
import 'package:my_local/app/routes/app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Call this method here to hide soft keyboard
        FocusScope.of(context).requestFocus(new FocusNode());
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