import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rootin/components/custom_text.dart';
import 'package:rootin/provider/timer_provider.dart';
import 'package:rootin/utils/add_space.dart';

class TimerText extends StatefulWidget {
  const TimerText({super.key});

  @override
  State<TimerText> createState() => _TimerTextState();
}

class _TimerTextState extends State<TimerText> {
  @override
  Widget build(BuildContext context) {
    TimerProvider watchProvider = context.watch<TimerProvider>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // hh
        watchProvider.timeLeftHour.toString().length == 1
            ? CustomText(
                text: "0${watchProvider.timeLeftHour}",
                fontSize: 24,
              )
            : CustomText(
                text: "${watchProvider.timeLeftHour}",
                fontSize: 24,
              ),
        // mm
        AddSpace().addHorizontalSpace(10),
        const CustomText(text: ":"),
        AddSpace().addHorizontalSpace(10),
        watchProvider.timeLeftMin.toString().length == 1
            ? CustomText(
                text: "0${watchProvider.timeLeftMin}",
                fontSize: 24,
              )
            : CustomText(
                text: "${watchProvider.timeLeftMin}",
                fontSize: 24,
              ),
        // ss
        AddSpace().addHorizontalSpace(10),
        const CustomText(text: ":"),
        AddSpace().addHorizontalSpace(10),
        watchProvider.timeLeftSec.toString().length == 1
            ? CustomText(
                text: "0${watchProvider.timeLeftSec}",
                fontSize: 24,
              )
            : CustomText(
                text: "${watchProvider.timeLeftSec}",
                fontSize: 24,
              ),
      ],
    );
  }
}
