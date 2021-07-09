import 'package:flutter/cupertino.dart';
import 'package:my_local/app/core/component/custom_appbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_local/app/core/constants/assets.dart';

Widget buildAppbar(String title) {
  return Container(
    height: 150.h,
    child: CustomAppbarWidget(
      addLeftButton: true,
      title: title,
      leading: Image.asset(
        Assets.icHamburger,
        width: 24,
        height: 24,
      ),
    ),
  );
}