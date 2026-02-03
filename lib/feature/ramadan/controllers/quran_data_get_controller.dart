import 'package:get/get.dart';
import 'package:quran/quran.dart';


class QuranDataGetController extends GetxController{

  RxString verse = ''.obs;
  RxString banglaTranslation = ''.obs;
  RxString englishTranslation = ''.obs;
  RxString surahName = ''.obs;
  RxString verseNumber = ''.obs;
  RxString surahNumber = ''.obs;

  @override
  void onInit() {
    super.onInit();
    randomVerse();
  }


  void randomVerse(){

    RandomVerse randomVerse = RandomVerse();
    verse.value = randomVerse.verse;
    surahName.value = getSurahNameArabic(randomVerse.surahNumber);
    verseNumber.value = randomVerse.verseNumber.toString();
    surahNumber.value = randomVerse.surahNumber.toString();

    banglaTranslation.value = getVerseTranslation(
      randomVerse.surahNumber,
      randomVerse.verseNumber,
      translation: Translation.bengali,
    );

    englishTranslation.value = getVerseTranslation(
      randomVerse.surahNumber,
      randomVerse.verseNumber,
      translation: Translation.enClearQuran,
    );

  }

}