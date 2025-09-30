import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../core/string_constent/path_constent/image_path.dart';
import '../widgets/hero_banner.dart';

class TheSunnahTab extends StatelessWidget {
  const TheSunnahTab({super.key});

  @override
  Widget build(BuildContext context) {
    return HeroBanner(
      quote: '“The best among you are those who have the best manners and character.”',
      reference: '— Sahih al-Bukhari (3559)',
      imagePath: ImagePath.theSunnahBanner,
    );
  }
}

