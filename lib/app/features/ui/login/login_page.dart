import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_local/app/core/component/base_widget.dart';
import 'package:my_local/app/core/component/custom_appbar.dart';
import 'package:my_local/app/features/bindings/home/home_binding.dart';
import 'package:my_local/app/features/bindings/login/login_binding.dart';
import 'package:my_local/app/features/controller/login/login_controller.dart';
import 'package:my_local/app/features/ui/home/home_page.dart';
import 'package:my_local/app/features/ui/login/phone_number_login_page.dart';

class LoginPage extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CustomAppbarWidget(
        addLeftButton: false,
        title: "Login",
      ),
      body: BaseWidget(
        child: Column(
          children: [
            MaterialButton(
              color: Colors.blue,
              child: Text("Đăng nhập"),
              onPressed: () {
                Get.to(() => PhoneNumberLoginPage(), binding: LoginBinding());
              },
            ),
            MaterialButton(
              color: Colors.blue,
              child: Text("Quét mã QR"),
              onPressed: () {
                Get.to(() => HomePage(), binding: HomeBinding());
              },
            )
          ],
        ),
      ),
    );
  }

}