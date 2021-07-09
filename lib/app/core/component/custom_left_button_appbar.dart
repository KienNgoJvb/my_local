import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLeftButtonAppBar extends StatelessWidget {
  final Widget? leading;
  final Function()? onTap;
  final IconData? icon;

  const CustomLeftButtonAppBar({
    Key? key,
    this.leading,
    this.onTap,
    this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: leading ??
          Icon(
            icon,
            color: Colors.white,
          ).paddingOnly(left: 10.w),
    );
  }
}
