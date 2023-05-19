import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rootin/components/custom_text.dart';
import 'package:rootin/components/custom_textfield.dart';
import 'package:rootin/provider/timer_provider.dart';

class TimerTextfield extends StatefulWidget {
  const TimerTextfield({super.key});

  @override
  State<TimerTextfield> createState() => _TimerTextfieldState();
}

class _TimerTextfieldState extends State<TimerTextfield> {
  @override
  Widget build(BuildContext context) {
    TimerProvider watchProvider = context.watch<TimerProvider>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomTextfield(
          controller: watchProvider.timerControllerHour,
          hintText: "hh",
        ),
        const CustomText(text: ":"),
        CustomTextfield(
          controller: watchProvider.timerControllerMin,
          hintText: "mm",
        ),
        const CustomText(text: ":"),
        CustomTextfield(
          controller: watchProvider.timerControllerSec,
          hintText: "ss",
        ),
      ],
    );
  }
}
