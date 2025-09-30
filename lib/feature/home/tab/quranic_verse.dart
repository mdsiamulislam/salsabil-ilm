import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ilm/core/string_constent/path_constent/image_path.dart';
import 'package:ilm/feature/home/widgets/hero_banner.dart';

class QuranicVerseTab extends StatelessWidget {
  const QuranicVerseTab({super.key});

  @override
  Widget build(BuildContext context) {
    return HeroBanner(
      quote: '“Indeed, Allah is with those who fear Him and those who are doers of good.”',
      reference: '— Quran 16:128',
      imagePath: ImagePath.quranVerseBanner,
    );
  }
}