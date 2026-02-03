import 'package:get/get.dart';
import 'package:ilm/core/utils/get_current_time.dart';


class CountDownController extends GetxController{

  RxString remainingTime = ''.obs;

  @override
  void onInit() {
    super.onInit();
    // Start the countdown timer
    startCountDown();
  }

  Future<void> startCountDown() async {

    final targetDateTime = DateTime(2026, 2, 19, 0, 0, 0);
    while (true) {
      final currentDateTime = GetCurrentTime.now();
      final difference = targetDateTime.difference(currentDateTime);

      if (difference.isNegative) {
        remainingTime.value = '00:00:00:00';
        break;
      }

      final days = difference.inDays;
      final hours = difference.inHours % 24;
      final minutes = difference.inMinutes % 60;
      final seconds = difference.inSeconds % 60;

      remainingTime.value =
          '${days.toString().padLeft(2, '0')}:${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';

      // Wait for 1 second before updating again
      await Future.delayed(Duration(seconds: 1));
    }

  }

}