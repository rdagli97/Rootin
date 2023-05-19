import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rootin/achievements_colors/completed_all_tasks_ontime_colors.dart';
import 'package:rootin/provider/finished_task_provider.dart';

class CompletedallTasksOnTimeImages extends StatefulWidget {
  const CompletedallTasksOnTimeImages({super.key});

  @override
  State<CompletedallTasksOnTimeImages> createState() =>
      _CompletedallTasksOnTimeImagesState();
}

class _CompletedallTasksOnTimeImagesState
    extends State<CompletedallTasksOnTimeImages> {
  @override
  Widget build(BuildContext context) {
    Widget imageWidget = Image.asset(
      "assets/0-100.png",
      color: CompletedAllTasksOnTimeColors().color0to100(context),
      scale: 10,
    );
    FinishedTaskProvider readFinishedTaskProvider =
        context.read<FinishedTaskProvider>();

    int onTimeTasksLength =
        readFinishedTaskProvider.finishedAllTasksOnTime.length;

    if (onTimeTasksLength >= 100 && onTimeTasksLength <= 200) {
      imageWidget = Image.asset(
        "assets/100-200.png",
        color: CompletedAllTasksOnTimeColors().color100to200(context),
        scale: 10,
      );
    } else if (onTimeTasksLength >= 200 && onTimeTasksLength <= 300) {
      imageWidget = Image.asset(
        "assets/200-300.png",
        color: CompletedAllTasksOnTimeColors().color200to300(context),
        scale: 10,
      );
    } else if (onTimeTasksLength >= 300 && onTimeTasksLength <= 400) {
      imageWidget = Image.asset(
        "assets/300-400.png",
        color: CompletedAllTasksOnTimeColors().color300to400(context),
        scale: 10,
      );
    } else if (onTimeTasksLength >= 400 && onTimeTasksLength <= 500) {
      imageWidget = Image.asset(
        "assets/400-500.png",
        color: CompletedAllTasksOnTimeColors().color400to500(context),
        scale: 10,
      );
    } else if (onTimeTasksLength >= 500 && onTimeTasksLength <= 600) {
      imageWidget = Image.asset(
        "assets/500-600.png",
        color: CompletedAllTasksOnTimeColors().color500to600(context),
        scale: 10,
      );
    } else if (onTimeTasksLength >= 600 && onTimeTasksLength <= 700) {
      imageWidget = Image.asset(
        "assets/600-700.png",
        color: CompletedAllTasksOnTimeColors().color600to700(context),
        scale: 10,
      );
    } else if (onTimeTasksLength >= 600 && onTimeTasksLength <= 700) {
      imageWidget = Image.asset(
        "assets/700-800.png",
        color: CompletedAllTasksOnTimeColors().color700to800(context),
        scale: 10,
      );
    } else if (onTimeTasksLength >= 600 && onTimeTasksLength <= 700) {
      imageWidget = Image.asset(
        "assets/800-900.png",
        color: CompletedAllTasksOnTimeColors().color800to900(context),
        scale: 10,
      );
    } else if (onTimeTasksLength >= 600 && onTimeTasksLength <= 700) {
      imageWidget = Image.asset(
        "assets/900-1000.png",
        color: CompletedAllTasksOnTimeColors().color900to1000(context),
        scale: 10,
      );
    } else if (onTimeTasksLength >= 600 && onTimeTasksLength <= 700) {
      imageWidget = Image.asset(
        "assets/1000-1100.png",
        color: CompletedAllTasksOnTimeColors().color1000to1100(context),
        scale: 10,
      );
    } else if (onTimeTasksLength >= 600 && onTimeTasksLength <= 700) {
      imageWidget = Image.asset(
        "assets/1100-1200.png",
        color: CompletedAllTasksOnTimeColors().color1100to1200(context),
        scale: 10,
      );
    } else if (onTimeTasksLength >= 600 && onTimeTasksLength <= 700) {
      imageWidget = Image.asset(
        "assets/1200-1300.png",
        color: CompletedAllTasksOnTimeColors().color1200to1300(context),
        scale: 10,
      );
    } else if (onTimeTasksLength >= 600 && onTimeTasksLength <= 700) {
      imageWidget = Image.asset(
        "assets/1300-1400.png",
        color: CompletedAllTasksOnTimeColors().color1300to1400(context),
        scale: 10,
      );
    } else if (onTimeTasksLength >= 600 && onTimeTasksLength <= 700) {
      imageWidget = Image.asset(
        "assets/1400-1500.png",
        color: CompletedAllTasksOnTimeColors().color1400to1500(context),
        scale: 10,
      );
    }
    return imageWidget;
  }
}
