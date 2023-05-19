import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rootin/achievements_colors/completed_all_tasks_colors.dart';
import 'package:rootin/provider/finished_task_provider.dart';

class CompletedAllTasksImages extends StatefulWidget {
  const CompletedAllTasksImages({super.key});

  @override
  State<CompletedAllTasksImages> createState() =>
      _CompletedAllTasksImagesState();
}

class _CompletedAllTasksImagesState extends State<CompletedAllTasksImages> {
  @override
  Widget build(BuildContext context) {
    Widget imageWidget = Image.asset(
      "assets/0-100.png",
      color: CompletedAllTasksColors().color0to100(context),
      scale: 10,
    );
    FinishedTaskProvider readFinishedTaskProvider =
        context.read<FinishedTaskProvider>();

    int finishedTaskLength = readFinishedTaskProvider.finishedAllTasks.length;

    if (finishedTaskLength >= 100 && finishedTaskLength <= 200) {
      imageWidget = Image.asset(
        "assets/100-200.png",
        color: CompletedAllTasksColors().color100to200(context),
        scale: 10,
      );
    } else if (finishedTaskLength >= 200 && finishedTaskLength <= 300) {
      imageWidget = Image.asset(
        "assets/200-300.png",
        color: CompletedAllTasksColors().color200to300(context),
        scale: 10,
      );
    } else if (finishedTaskLength >= 300 && finishedTaskLength <= 400) {
      imageWidget = Image.asset(
        "assets/300-400.png",
        color: CompletedAllTasksColors().color300to400(context),
        scale: 10,
      );
    } else if (finishedTaskLength >= 400 && finishedTaskLength <= 500) {
      imageWidget = Image.asset(
        "assets/400-500.png",
        color: CompletedAllTasksColors().color400to500(context),
        scale: 10,
      );
    } else if (finishedTaskLength >= 500 && finishedTaskLength <= 600) {
      imageWidget = Image.asset(
        "assets/500-600.png",
        color: CompletedAllTasksColors().color500to600(context),
        scale: 10,
      );
    } else if (finishedTaskLength >= 600 && finishedTaskLength <= 700) {
      imageWidget = Image.asset(
        "assets/600-700.png",
        color: CompletedAllTasksColors().color600to700(context),
        scale: 10,
      );
    } else if (finishedTaskLength >= 600 && finishedTaskLength <= 700) {
      imageWidget = Image.asset(
        "assets/700-800.png",
        color: CompletedAllTasksColors().color700to800(context),
        scale: 10,
      );
    } else if (finishedTaskLength >= 600 && finishedTaskLength <= 700) {
      imageWidget = Image.asset(
        "assets/800-900.png",
        color: CompletedAllTasksColors().color800to900(context),
        scale: 10,
      );
    } else if (finishedTaskLength >= 600 && finishedTaskLength <= 700) {
      imageWidget = Image.asset(
        "assets/900-1000.png",
        color: CompletedAllTasksColors().color900to1000(context),
        scale: 10,
      );
    } else if (finishedTaskLength >= 600 && finishedTaskLength <= 700) {
      imageWidget = Image.asset(
        "assets/1000-1100.png",
        color: CompletedAllTasksColors().color1000to1100(context),
        scale: 10,
      );
    } else if (finishedTaskLength >= 600 && finishedTaskLength <= 700) {
      imageWidget = Image.asset(
        "assets/1100-1200.png",
        color: CompletedAllTasksColors().color1100to1200(context),
        scale: 10,
      );
    } else if (finishedTaskLength >= 600 && finishedTaskLength <= 700) {
      imageWidget = Image.asset(
        "assets/1200-1300.png",
        color: CompletedAllTasksColors().color1200to1300(context),
        scale: 10,
      );
    } else if (finishedTaskLength >= 600 && finishedTaskLength <= 700) {
      imageWidget = Image.asset(
        "assets/1300-1400.png",
        color: CompletedAllTasksColors().color1300to1400(context),
        scale: 10,
      );
    } else if (finishedTaskLength >= 600 && finishedTaskLength <= 700) {
      imageWidget = Image.asset(
        "assets/1400-1500.png",
        color: CompletedAllTasksColors().color1400to1500(context),
        scale: 10,
      );
    }
    return imageWidget;
  }
}
