import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_local/app/core/component/custom_left_button_appbar.dart';
import 'package:my_local/app/core/values/colors.dart';
import 'package:my_local/app/core/values/styles/app_text_style.dart';
import 'package:my_local/app/core/values/styles/dimens.dart';

class CustomAppbarWidget extends PreferredSize {
  final String title;
  final Color? backgroundColor, backButtonColor, textColor;
  final TextStyle? textStyle;
  final List<Widget>? actions;
  final Function()? onActionButtonTap, onBackPress;
  final double? actionButtonWidth;
  final Widget? leading, bottom;
  final bool addLeftButton;
  final IconData? icon;

  CustomAppbarWidget({
    Key? key,
    required this.title,
    this.leading,
    this.addLeftButton = true,
    this.onBackPress,
    this.backgroundColor = AppColors.colorRedPink,
    this.backButtonColor = Colors.white,
    this.textColor,
    this.textStyle,
    this.actions,
    this.onActionButtonTap,
    this.actionButtonWidth = 100,
    this.bottom,
    this.icon
  })  : assert(
  textColor == null || textStyle == null,
  'Cannot provide both a textColor and a textStyle\n'
      'To provide both, use "textStyle: TextStyle(color: color)".',
  ),
        super(
        key: key,
        child: const SizedBox.shrink(),
        preferredSize:
        Size.fromHeight(bottom == null ? kToolbarHeight : 98.h),
      );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      actions: actions,
      actionsIconTheme: IconThemeData(
        size: 30.w,
        color: Colors.white
      ),
      bottom: bottom == null
          ? null
          : PreferredSize(
        preferredSize: Size.fromHeight(100.h),
        child: bottom!,
      ),
      leading: addLeftButton
          ? CustomLeftButtonAppBar(
        leading: leading,
        onTap: onBackPress,
        icon: icon,
      )
          : null,
      leadingWidth: 45.w,
      backgroundColor: backgroundColor,
      title: Text(
        title,
        style: textStyle ??
            AppTextStyle.boldStyle.copyWith(
              color: textColor ??
                  (backgroundColor == Colors.white
                      ? AppColors.mineShaft
                      : Colors.white),
              fontSize: Dimens.fontSize18,
            ),
      ),
    );
  }
}
