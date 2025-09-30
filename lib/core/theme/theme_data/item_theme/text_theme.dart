import 'package:flutter/material.dart';
import '../../color/color_variation/light_colors.dart';
import '../../color/color_variation/dark_colors.dart';
import '../font_config.dart';

class AppTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    bodyLarge: FontConfig.getFont(
      color: LightColors.textPrimary,
      fontSize: 16,
    ),
    bodyMedium: FontConfig.getFont(
      color: LightColors.textSecondary,
      fontSize: 14,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    bodyLarge: FontConfig.getFont(
      color: DarkColors.textPrimary,
      fontSize: 16,
    ),
    bodyMedium: FontConfig.getFont(
      color: DarkColors.textSecondary,
      fontSize: 14,
    ),
  );
}
