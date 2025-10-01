import 'package:flutter/material.dart';

import '../../../core/theme/color/color.dart';

class SettingsTileList{

  static List<Map<String, dynamic>> generalSettings = [
    {
      'title': 'Notifications',
      'subtitle': 'Manage notification settings',
      'prefixBgColor': AppColors.info,
      'prefixIcon': Icons.notifications_active_outlined,
      'suffixIcon': Icons.arrow_forward_ios,
    },
    {
      'title': 'Dark Mode',
      'subtitle': 'Enable or disable dark mode',
      'prefixBgColor': AppColors.primary,
      'prefixIcon': Icons.dark_mode,
      'suffixSwitch': Switch(
        value: true,
        onChanged: (bool value) {
          value = !value;
        },
      ),
    },
  ];

  static List<Map<String, dynamic>> contentSettings = [
    {
      'title': 'Feed Preferences',
      'subtitle': 'Customize your content feed',
      'prefixBgColor': AppColors.info,
      'prefixIcon': Icons.dashboard_customize_outlined,
      'suffixIcon': Icons.arrow_forward_ios,
    },
    {
      'title': 'Language',
      'subtitle': 'Select your preferred language',
      'prefixBgColor': AppColors.primary,
      'prefixIcon': Icons.language,
      'suffixIcon': Icons.arrow_forward_ios,
    },
  ];

}