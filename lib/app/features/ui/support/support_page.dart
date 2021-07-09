import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_local/app/core/component/base_widget.dart';
import 'package:my_local/app/core/component/custom_appbar.dart';
import 'package:my_local/app/features/controller/support/support_controller.dart';

class SupportPage extends GetWidget<SupportController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CustomAppbarWidget(
        addLeftButton: false,
        title: 'support'.tr,
      ),
      body: BaseWidget(
        child: Container(),
      ),
    );
  }

}