import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rootin/achievements_colors/all_completed_tasks_colors.dart';
import 'package:rootin/provider/finished_task_provider.dart';

class AllCompletedTasksImages extends StatefulWidget {
  const AllCompletedTasksImages({super.key});

  @override
  State<AllCompletedTasksImages> createState() =>
      _AllCompletedTasksImagesState();
}

class _AllCompletedTasksImagesState extends State<AllCompletedTasksImages> {
  @override
  Widget build(BuildContext context) {
    Widget imageWidget = Image.asset(
      "assets/0-100.png",
      color: AllCompletedTasksColor().color0to100(context),
      scale: 10,
    );
    FinishedTaskProvider readFinishedTaskProvider =
        context.read<FinishedTaskProvider>();

    int taskLength = readFinishedTaskProvider.allCompletedTasks.length;

    if (taskLength >= 100 && taskLength <= 200) {
      imageWidget = Image.asset(
        "assets/100-200.png",
        color: AllCompletedTasksColor().color100to200(context),
        scale: 10,
      );
    } else if (taskLength >= 200 && taskLength <= 300) {
      imageWidget = Image.asset(
        "assets/200-300.png",
        color: AllCompletedTasksColor().color200to300(context),
        scale: 10,
      );
    } else if (taskLength >= 300 && taskLength <= 400) {
      imageWidget = Image.asset(
        "assets/300-400.png",
        color: AllCompletedTasksColor().color300to400(context),
        scale: 10,
      );
    } else if (taskLength >= 400 && taskLength <= 500) {
      imageWidget = Image.asset(
        "assets/400-500.png",
        color: AllCompletedTasksColor().color400to500(context),
        scale: 10,
      );
    } else if (taskLength >= 500 && taskLength <= 600) {
      imageWidget = Image.asset(
        "assets/500-600.png",
        color: AllCompletedTasksColor().color500to600(context),
        scale: 10,
      );
    } else if (taskLength >= 600 && taskLength <= 700) {
      imageWidget = Image.asset(
        "assets/600-700.png",
        color: AllCompletedTasksColor().color600to700(context),
        scale: 10,
      );
    } else if (taskLength >= 600 && taskLength <= 700) {
      imageWidget = Image.asset(
        "assets/700-800.png",
        color: AllCompletedTasksColor().color700to800(context),
        scale: 10,
      );
    } else if (taskLength >= 600 && taskLength <= 700) {
      imageWidget = Image.asset(
        "assets/800-900.png",
        color: AllCompletedTasksColor().color800to900(context),
        scale: 10,
      );
    } else if (taskLength >= 600 && taskLength <= 700) {
      imageWidget = Image.asset(
        "assets/900-1000.png",
        color: AllCompletedTasksColor().color900to1000(context),
        scale: 10,
      );
    } else if (taskLength >= 600 && taskLength <= 700) {
      imageWidget = Image.asset(
        "assets/1000-1100.png",
        color: AllCompletedTasksColor().color1000to1100(context),
        scale: 10,
      );
    } else if (taskLength >= 600 && taskLength <= 700) {
      imageWidget = Image.asset(
        "assets/1100-1200.png",
        color: AllCompletedTasksColor().color1100to1200(context),
        scale: 10,
      );
    } else if (taskLength >= 600 && taskLength <= 700) {
      imageWidget = Image.asset(
        "assets/1200-1300.png",
        color: AllCompletedTasksColor().color1200to1300(context),
        scale: 10,
      );
    } else if (taskLength >= 600 && taskLength <= 700) {
      imageWidget = Image.asset(
        "assets/1300-1400.png",
        color: AllCompletedTasksColor().color1300to1400(context),
        scale: 10,
      );
    } else if (taskLength >= 600 && taskLength <= 700) {
      imageWidget = Image.asset(
        "assets/1400-1500.png",
        color: AllCompletedTasksColor().color1400to1500(context),
        scale: 10,
      );
    }
    return imageWidget;
  }
}
