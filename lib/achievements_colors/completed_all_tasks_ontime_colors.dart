import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rootin/provider/finished_task_provider.dart';

class CompletedAllTasksOnTimeColors {
  Color color0to100(BuildContext context) {
    final double redValue =
        context.watch<FinishedTaskProvider>().finishedAllTasksOnTime.length /
            100;
    return Color.fromRGBO(
        255, (255 * (1 - redValue)).toInt(), (255 * (1 - redValue)).toInt(), 1);
  }

  Color color100to200(BuildContext context) {
    final double redValue =
        (context.watch<FinishedTaskProvider>().finishedAllTasksOnTime.length -
                100) /
            100;
    return Color.fromRGBO(
        255, (255 * (1 - redValue)).toInt(), (255 * (1 - redValue)).toInt(), 1);
  }

  Color color200to300(BuildContext context) {
    final double redValue =
        (context.watch<FinishedTaskProvider>().finishedAllTasksOnTime.length -
                200) /
            100;
    return Color.fromRGBO(
        255, (255 * (1 - redValue)).toInt(), (255 * (1 - redValue)).toInt(), 1);
  }

  Color color300to400(BuildContext context) {
    final double redValue =
        (context.watch<FinishedTaskProvider>().finishedAllTasksOnTime.length -
                300) /
            100;
    return Color.fromRGBO(
        255, (255 * (1 - redValue)).toInt(), (255 * (1 - redValue)).toInt(), 1);
  }

  Color color400to500(BuildContext context) {
    final double redValue =
        (context.watch<FinishedTaskProvider>().finishedAllTasksOnTime.length -
                400) /
            100;
    return Color.fromRGBO(
        255, (255 * (1 - redValue)).toInt(), (255 * (1 - redValue)).toInt(), 1);
  }

  Color color500to600(BuildContext context) {
    final double redValue =
        (context.watch<FinishedTaskProvider>().finishedAllTasksOnTime.length -
                500) /
            100;
    return Color.fromRGBO(
        255, (255 * (1 - redValue)).toInt(), (255 * (1 - redValue)).toInt(), 1);
  }

  Color color600to700(BuildContext context) {
    final double redValue =
        (context.watch<FinishedTaskProvider>().finishedAllTasksOnTime.length -
                600) /
            100;
    return Color.fromRGBO(
        255, (255 * (1 - redValue)).toInt(), (255 * (1 - redValue)).toInt(), 1);
  }

  Color color700to800(BuildContext context) {
    final double redValue =
        (context.watch<FinishedTaskProvider>().finishedAllTasksOnTime.length -
                700) /
            100;
    return Color.fromRGBO(
        255, (255 * (1 - redValue)).toInt(), (255 * (1 - redValue)).toInt(), 1);
  }

  Color color800to900(BuildContext context) {
    final double redValue =
        (context.watch<FinishedTaskProvider>().finishedAllTasksOnTime.length -
                800) /
            100;
    return Color.fromRGBO(
        255, (255 * (1 - redValue)).toInt(), (255 * (1 - redValue)).toInt(), 1);
  }

  Color color900to1000(BuildContext context) {
    final double redValue =
        (context.watch<FinishedTaskProvider>().finishedAllTasksOnTime.length -
                900) /
            100;
    return Color.fromRGBO(
        255, (255 * (1 - redValue)).toInt(), (255 * (1 - redValue)).toInt(), 1);
  }

  Color color1000to1100(BuildContext context) {
    final double redValue =
        (context.watch<FinishedTaskProvider>().finishedAllTasksOnTime.length -
                1000) /
            100;
    return Color.fromRGBO(
        255, (255 * (1 - redValue)).toInt(), (255 * (1 - redValue)).toInt(), 1);
  }

  Color color1100to1200(BuildContext context) {
    final double redValue =
        (context.watch<FinishedTaskProvider>().finishedAllTasksOnTime.length -
                1100) /
            100;
    return Color.fromRGBO(
        255, (255 * (1 - redValue)).toInt(), (255 * (1 - redValue)).toInt(), 1);
  }

  Color color1200to1300(BuildContext context) {
    final double redValue =
        (context.watch<FinishedTaskProvider>().finishedAllTasksOnTime.length -
                1200) /
            100;
    return Color.fromRGBO(
        255, (255 * (1 - redValue)).toInt(), (255 * (1 - redValue)).toInt(), 1);
  }

  Color color1300to1400(BuildContext context) {
    final double redValue =
        (context.watch<FinishedTaskProvider>().finishedAllTasksOnTime.length -
                1300) /
            100;
    return Color.fromRGBO(
        255, (255 * (1 - redValue)).toInt(), (255 * (1 - redValue)).toInt(), 1);
  }

  Color color1400to1500(BuildContext context) {
    final double redValue =
        (context.watch<FinishedTaskProvider>().finishedAllTasksOnTime.length -
                1400) /
            100;
    return Color.fromRGBO(
        255, (255 * (1 - redValue)).toInt(), (255 * (1 - redValue)).toInt(), 1);
  }
}
