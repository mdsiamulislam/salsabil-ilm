import 'package:flutter/material.dart';
import '../../color/color.dart';
import '../../color/color_variation/dark_colors.dart';
import '../item_theme/appbar_theme.dart';
import '../item_theme/button_theme.dart';
import '../item_theme/text_theme.dart';

class DarkTheme {
  static ThemeData get theme => ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: DarkColors.background,
    textTheme: AppTextTheme.darkTextTheme,
    appBarTheme: AppAppBarTheme.darkAppBarTheme,
    elevatedButtonTheme: AppButtonTheme.darkButtonTheme,
    iconTheme: IconThemeData(color: AppColors.primary)
  );
}
