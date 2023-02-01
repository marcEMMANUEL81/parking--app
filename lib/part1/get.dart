import 'package:get/get.dart';
import 'dart:async';

class TimerController extends GetxController {
  Timer _timer;
  int remainingSeconds = 1;
  final time = '00.00'.obs;

  @override
  void onReady() {
    _startTimer(90);
    super.onReady();
  }

  @override
  void onClose() {
    if (_timer != null) {
      _timer.cancel();
    }
    super.onClose();
  }

  _startTimer(int seconds) {
    var duration = Duration(seconds: 1);
    remainingSeconds = seconds;
    _timer = Timer.periodic(duration, (Timer timer) {
      if (remainingSeconds != 0) {
        int minutes = remainingSeconds ~/ 60;
        int seconds = (remainingSeconds % 60);
        time.value = minutes.toString().padLeft(2, "0") +
            ":" +
            seconds.toString().padLeft(2, "0");
        remainingSeconds--;
      }
    });
  }
}


class TimerController2 extends GetxController {
  Timer _timer;
  int remainingSeconds = 1;
  final time = '00.00'.obs;

  @override
  void onReady() {
    _startTimer(0);
    super.onReady();
  }

  @override
  void onClose() {
    if (_timer != null) {
      _timer.cancel();
    }
    super.onClose();
  }

  _startTimer(int seconds) {
    var duration = Duration(seconds: 1);
    remainingSeconds = seconds;
    _timer = Timer.periodic(duration, (Timer timer) {
      if (remainingSeconds != 0) {
        int minutes = remainingSeconds ~/ 60;
        int seconds = (remainingSeconds % 60);
        time.value = minutes.toString().padLeft(2, "0") +
            ":" +
            seconds.toString().padLeft(2, "0");
        remainingSeconds++;
      }
    });
  }
}
