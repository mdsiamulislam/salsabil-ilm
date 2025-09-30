import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontConfig {
  static TextStyle getFont({
    required Color color,
    double? fontSize,
    FontWeight? fontWeight,
  }) {
    String lang = ui.window.locale.languageCode;

    switch (lang) {
      case 'bn':
        return GoogleFonts.getFont(
          'Hind Siliguri',
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        );

      case 'ar':
        return GoogleFonts.getFont(
          'Cairo',
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        );

      default:
        return GoogleFonts.getFont(
          'Lato',
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        );
    }
  }
}
