import 'package:flutter/material.dart';
import 'package:ilm/feature/landing_page.dart';

import 'core/theme/theme_data/theme_variation/dark_theme.dart';
import 'core/theme/theme_data/theme_variation/light_theme.dart';

void main() {
  runApp(const InitApp());
}

class InitApp extends StatelessWidget {
  const InitApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: LightTheme.theme,
      darkTheme: DarkTheme.theme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}
