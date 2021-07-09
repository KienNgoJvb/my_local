import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_local/app/core/component/base_widget.dart';
import 'package:my_local/app/core/component/custom_appbar.dart';
import 'package:my_local/app/features/controller/recharge_money_payment/recharge_money_controller.dart';

class RechargeMoneyPaymentPage extends GetWidget<RechargeMoneyPaymentController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CustomAppbarWidget(
        addLeftButton: false,
        title: "Sim local",
      ),
      body: BaseWidget(
        child: Container(),
      ),
    );
  }

}