import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_local/app/core/values/strings.dart';

class Utils {
  const Utils._();

  static void showDialog(
      String? message, {
        String title = Strings.error,
        bool success = false,
        VoidCallback? onTap,
      }) =>
      Get.defaultDialog(
        barrierDismissible: false,
        onWillPop: () async {
          Get.back();

          onTap?.call();

          return true;
        },
        title: success ? Strings.success : title,
        content: Text(
          message ?? Strings.somethingWentWrong,
          textAlign: TextAlign.center,
          maxLines: 6,
        ),
        confirm: Align(
          alignment: Alignment.centerRight,
          child: Text(Strings.ok),
        ),
      );

  static void loadingDialog() {
    Utils.closeDialog();

    Get.dialog(
      const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  static void closeDialog() {
    if (Get.isDialogOpen!) {
      Get.back();
    }
  }

  static void closeSnackBar() {
    if (Get.isSnackbarOpen!) {
      Get.back();
    }
  }

  static void showSnackBar(String? message) {
    closeSnackBar();

    Get.rawSnackbar(message: message);
  }

  static void closeKeyboard() {
    final currentFocus = Get.focusScope!;
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  static void goBackToScreen(String routeName) {
    Get.until(
      (route) => route.settings.name == routeName,
    );
  }
}
