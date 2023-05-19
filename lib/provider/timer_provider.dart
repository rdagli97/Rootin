import 'dart:async';

import 'package:flutter/material.dart';

class TimerProvider extends ChangeNotifier {
  TextEditingController timerControllerHour = TextEditingController();
  TextEditingController timerControllerMin = TextEditingController();
  TextEditingController timerControllerSec = TextEditingController();

  int timeLeftMin = 0;
  int timeLeftHour = 0;
  int timeLeftSec = 0;

  bool pauseTimer = false;

  bool timerReseted = true;

  bool timerIsOn = false;

  late Timer timer;

  void initializeTimeLeft() {
    timeLeftHour = timerControllerHour.text.isEmpty
        ? 0
        : int.parse(timerControllerHour.text);
    timeLeftMin = timerControllerMin.text.isEmpty
        ? 0
        : int.parse(timerControllerMin.text);
    timeLeftSec = timerControllerSec.text.isEmpty
        ? 0
        : int.parse(timerControllerSec.text);
    notifyListeners();
  }

  void startTimer() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (pauseTimer == false) {
          if (timeLeftHour != 0 || timeLeftMin != 0 || timeLeftSec != 0) {
            if (timeLeftHour != 0 && timeLeftMin == 0) {
              timeLeftHour--;
              timeLeftMin = 60;
            }
            if (timeLeftMin != 0 && timeLeftSec == 0) {
              timeLeftMin--;
              timeLeftSec = 59;
            }
            timeLeftSec--;
          } else {
            timerIsOn = false;
            timer.cancel();
          }
        } else {
          timer.cancel();
        }
        notifyListeners();
      },
    );
    timerControllerHour.clear();
    timerControllerMin.clear();
    timerControllerSec.clear();
    timerIsOn = true;
  }

  void setPauseTimer() {
    pauseTimer = true;
    notifyListeners();
  }

  void setResumeTimer() {
    pauseTimer = false;
    timerIsOn = true;
    notifyListeners();
  }

  void resetTimerValues() {
    timeLeftHour = 0;
    timeLeftMin = 0;
    timeLeftSec = 0;
    timer.cancel();
    pauseTimer = false;
    timerIsOn = false;
    notifyListeners();
  }

  void setTimerReseted() {
    timerReseted = true;
    notifyListeners();
  }

  void setTimerNotReseted() {
    timerReseted = false;
    notifyListeners();
  }
}
