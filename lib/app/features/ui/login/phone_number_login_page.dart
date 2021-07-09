import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_local/app/core/component/base_widget.dart';
import 'package:my_local/app/core/component/custom_appbar.dart';
import 'package:my_local/app/features/bindings/login/login_binding.dart';
import 'package:my_local/app/features/controller/login/login_controller.dart';
import 'package:my_local/app/features/ui/login/otp_login_page.dart';

class PhoneNumberLoginPage extends GetWidget<LoginController> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CustomAppbarWidget(
        addLeftButton: false,
        title: "Phone number login page",
      ),
      body: BaseWidget(
        child: Column(
          children: [
            MaterialButton(
              color: Colors.blue,
              child: Text("Tiếp tục"),
              onPressed: () {
                Get.to(() => OtpLoginPage(), binding: LoginBinding());
              },
            )
          ],
        ),
      ),
    );
  }

}