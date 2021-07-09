import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_local/app/core/component/custom_appbar.dart';
import 'package:my_local/app/features/controller/home/home_controller.dart';

class NotificationPage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CustomAppbarWidget(
        addLeftButton: false,
        title: "Notification",
      ),
      body: Container(
        child: Text("Notification"),
      ),
    );
  }

}