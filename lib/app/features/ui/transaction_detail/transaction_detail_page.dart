import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_local/app/core/component/base_widget.dart';
import 'package:my_local/app/core/component/custom_appbar.dart';
import 'package:my_local/app/features/controller/transaction_detail/transaction_history_controller.dart';

class TransactionDetailPage extends GetWidget<TransactionDetailController> {
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