// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:rootin/pages/home_page.dart';
import 'package:rootin/provider/finished_task_provider.dart';
import 'package:rootin/provider/motto_words_provider.dart';
import 'package:rootin/provider/timer_provider.dart';

void main() async {
  await Hive.initFlutter();
  Box box = await Hive.openBox("habit_box");
  Box currentCompletedTasks = await Hive.openBox("current_completed_tasks");
  Box allCompletedTasks = await Hive.openBox("all_completed_tasks");
  Box finishedAllTasks = await Hive.openBox("finished_all_tasks");
  Box finishedAllTasksOnTime = await Hive.openBox("finished_all_tasks_on_time");
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => FinishedTaskProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => TimerProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => MottoProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(),
      home: const HomePage(),
    );
  }
}
