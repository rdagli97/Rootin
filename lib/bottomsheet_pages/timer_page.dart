import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rootin/components/custom_elevated_button.dart';
import 'package:rootin/components/timer_text.dart';
import 'package:rootin/components/timer_textfield.dart';
import 'package:rootin/consts/strings.dart';
import 'package:rootin/provider/timer_provider.dart';
import 'package:rootin/utils/add_space.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({super.key});

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  @override
  Widget build(BuildContext context) {
    var readTimer = context.read<TimerProvider>();
    var watchTimer = context.watch<TimerProvider>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // current timer
        const TimerText(),
        // timer textfield
        watchTimer.timerIsOn
            ? AddSpace().addVerticalSpace(0)
            : const TimerTextfield(),
        // start timer button
        CustomButton(
          height: 40,
          width: 100,
          onTap: () {
            if (readTimer.pauseTimer == false &&
                readTimer.timerReseted == true) {
              readTimer.initializeTimeLeft();
            }
            if (readTimer.timerReseted == true ||
                readTimer.pauseTimer == true) {
              readTimer.startTimer();
            } else {
              // timer already working , please first reset the timer before start with the new values
            }
            readTimer.setResumeTimer();
          },
          child: watchTimer.pauseTimer
              ? const Text(AllStrings.resume)
              : const Text(AllStrings.start),
        ),
        // reset timer button
        CustomButton(
          height: 40,
          width: 100,
          onTap: () {
            readTimer.resetTimerValues();
            readTimer.setTimerReseted();
          },
          child: const Text(
            AllStrings.reset,
          ),
        ),
        // pause timer button
        CustomButton(
          height: 40,
          width: 100,
          onTap: () {
            readTimer.setPauseTimer();
            readTimer.setTimerNotReseted();
          },
          child: const Text(
            AllStrings.pause,
          ),
        ),
      ],
    );
  }
}
