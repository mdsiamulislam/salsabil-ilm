import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilm/core/routing/route.dart';
import 'package:ilm/core/routing/route_name.dart';

import 'core/theme/theme_data/theme_variation/dark_theme.dart';
import 'core/theme/theme_data/theme_variation/light_theme.dart';

void main() async{
  runApp(const InitApp());
}

class InitApp extends StatelessWidget {
  const InitApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: LightTheme.theme,
      darkTheme: DarkTheme.theme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      getPages: AppRoute.pages,
      initialRoute: RouteName.ramadanHome,
    );
  }
}
