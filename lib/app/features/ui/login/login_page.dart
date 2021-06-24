import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_local/app/features/controller/login/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        children: [
          Obx(
            () {
              return Text(controller.count.value.toString());
            }
          ),
          MaterialButton(
            onPressed: () => controller.incrementCount(),
            child: Text("Login"),
          )
        ],
      ),
    );
  }

}