import 'package:flutter/material.dart';

import '../../color/color_variation/dark_colors.dart';
import '../../color/color_variation/light_colors.dart';

class AppAppBarTheme {
  static AppBarTheme lightAppBarTheme = const AppBarTheme(
    backgroundColor: LightColors.background,
    foregroundColor: LightColors.textPrimary,
    elevation: 0,
  );

  static AppBarTheme darkAppBarTheme = const AppBarTheme(
    backgroundColor: DarkColors.background,
    foregroundColor: DarkColors.textPrimary,
    elevation: 0,
  );
}
