import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_local/app/features/bindings/login/login_binding.dart';
import 'package:my_local/app/features/ui/login/login_page.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashPageState();
  }

}

class SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    delaySplash();
  }

  @override
  void dispose() {
    super.dispose();
  }

  delaySplash() async {
    await new Future.delayed(const Duration(seconds: 2));
    // Get.to(() => LoginPage(), binding: LoginBinding());
    Get.to(() => LoginPage(), binding: LoginBinding());
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Center(
              child: Text("Splash screen")
          ),
        ),
      ),
    );
  }
}