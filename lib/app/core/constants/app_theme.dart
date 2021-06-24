import 'package:flutter/material.dart';

import 'font_family.dart';

final ThemeData themeData = new ThemeData(
    fontFamily: FontFamily.sfProText,
    brightness: Brightness.light,
    primaryColorBrightness: Brightness.light,
    accentColorBrightness: Brightness.light);

final ThemeData themeDataDark = ThemeData(
  fontFamily: FontFamily.sfProText,
  brightness: Brightness.dark,
  primaryColorBrightness: Brightness.dark,
  accentColorBrightness: Brightness.dark,
);
