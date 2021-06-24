import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_local/app/core/component/custom_retry_widget.dart';
import 'package:my_local/app/core/values/colors.dart';
import 'package:my_local/app/domain/errors/api_interface_controller.dart';

class BaseWidget extends GetView<ApiInterfaceController> {
  ///A widget with only custom retry button widget.

  final Widget child;
  final bool addSafeArea, addBackgroundColor;
  final EdgeInsets? padding;
  final Color? backgroundColor;

  const BaseWidget({
    Key? key,
    required this.child,
    this.addSafeArea = true,
    this.addBackgroundColor = true,
    this.padding,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.retry != null
          ? safeAreaWidget
          : (addSafeArea ? SafeArea(child: widget) : widget),
    );
  }

  Widget get safeAreaWidget => SafeArea(
        child: controller.error != null
            ? CustomRetryWidget(
                onPressed: () {
                  controller.error = null;

                  controller.retry!();
                },
              )
            : widget,
      );

  Widget get widget => Container(
        width: double.infinity,
        color: addBackgroundColor ? AppColors.white : backgroundColor,
        padding: padding,
        child: child,
      );
}
