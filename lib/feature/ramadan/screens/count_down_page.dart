import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ilm/core/string_constent/external_link.dart';
import 'package:ilm/core/utils/url_launcher.dart';
import 'package:ilm/feature/ramadan/controllers/count_down_controller.dart';
import 'package:get/get.dart';
import 'package:ilm/feature/ramadan/controllers/quran_data_get_controller.dart';

class CountDownPage extends StatelessWidget {
  const CountDownPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CountDownController countDownController = Get.put(CountDownController());
    final QuranDataGetController quranDataGetController = Get.put(QuranDataGetController());

    const primaryColor = Color(0xFF0D5C63);
    const accentColor = Color(0xFFD4AF37);
    const bgColor = Color(0xFFF4F6F8);
    const textDark = Color(0xFF1E2A2F);

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              /// 🌙 HEADER
              Text(
                "Ramadan Countdown",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                  letterSpacing: 1,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                "Preparing hearts before the blessed month",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade600,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),

              /// ⏳ COUNTDOWN CARD
              Container(
                padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    const Text(
                      "Time Remaining Until Ramadan 2026",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: textDark,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    Obx(() => Text(
                      countDownController.remainingTime.value,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                      textAlign: TextAlign.center,
                    )),
                    const SizedBox(height: 8),
                    Text(
                      "Format: Day : Hour : Minute : Second",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              /// 📖 VERSE CARD
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    )
                  ],
                ),
                child: Obx(() => Column(
                  children: [
                    Text(
                      "Today's Quranic Verse",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                    const SizedBox(height: 14),

                    Text(
                      quranDataGetController.verse.value,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        height: 1.6,
                        color: textDark,
                      ),
                    ),

                    const SizedBox(height: 10),

                    Text(
                      "- ${quranDataGetController.surahName.value} ${quranDataGetController.surahNumber.value}:${quranDataGetController.verseNumber.value}",
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: accentColor,
                      ),
                    ),

                    const SizedBox(height: 14),

                    Text(
                      quranDataGetController.englishTranslation.value,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade800,
                        height: 1.5,
                      ),
                    ),

                    const SizedBox(height: 10),

                    Text(
                      quranDataGetController.banglaTranslation.value,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade800,
                        height: 1.5,
                      ),
                    ),

                    const SizedBox(height: 12),

                    IconButton(
                      icon: const Icon(Icons.refresh, color: primaryColor),
                      onPressed: () {
                        quranDataGetController.randomVerse();
                      },
                    ),
                  ],
                )),
              ),

              const SizedBox(height: 30),

              /// 🌐 SOCIAL SECTION
              Text(
                "Connect With Us",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: primaryColor,
                ),
              ),
              const SizedBox(height: 12),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _socialButton(FontAwesomeIcons.facebook, primaryColor, () {
                    UrlLauncherHelper.openUrl(ExternalLink.salsabilFacebookPage);
                  }),
                  const SizedBox(width: 18),
                  _socialButton(FontAwesomeIcons.whatsapp, primaryColor, () {
                    UrlLauncherHelper.openUrl(ExternalLink.salsabilWhatsAppChannel);
                  }),
                  const SizedBox(width: 18),
                  _socialButton(FontAwesomeIcons.telegram, primaryColor, () {
                    UrlLauncherHelper.openUrl(ExternalLink.salsabilTelegramChannel);
                  }),
                  const SizedBox(width: 18),
                  _socialButton(FontAwesomeIcons.youtube, primaryColor, () {
                    UrlLauncherHelper.openUrl(ExternalLink.salsabilYoutubeChannel);
                  }),
                ],
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget _socialButton(IconData icon, Color color, VoidCallback onTap) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color.withOpacity(0.1),
      ),
      child: IconButton(
        icon: FaIcon(icon, color: color),
        onPressed: onTap,
      ),
    );
  }
}
