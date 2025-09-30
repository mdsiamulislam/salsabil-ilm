import 'package:flutter/material.dart';
import '../../color/color.dart';
import '../../color/color_variation/light_colors.dart';
import '../item_theme/appbar_theme.dart';
import '../item_theme/button_theme.dart';
import '../item_theme/text_theme.dart';

class LightTheme {
  static ThemeData get theme => ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: LightColors.background,
    textTheme: AppTextTheme.lightTextTheme,
    appBarTheme: AppAppBarTheme.lightAppBarTheme,
    elevatedButtonTheme: AppButtonTheme.lightButtonTheme,
    iconTheme: IconThemeData(color: AppColors.primary)
  );
}
