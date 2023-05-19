import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:rootin/components/congrats_container.dart';
import 'package:rootin/components/custom_alert_box.dart';
import 'package:rootin/components/custom_text.dart';
import 'package:rootin/components/habit_tile.dart';
import 'package:rootin/components/my_fab.dart';
import 'package:rootin/components/smbs.dart';
import 'package:rootin/consts/colors.dart';
import 'package:rootin/consts/strings.dart';
import 'package:rootin/data/habit_database.dart';
import 'package:rootin/pages/loading_screen.dart';
import 'package:rootin/provider/finished_task_provider.dart';
import 'package:rootin/provider/motto_words_provider.dart';
import 'package:rootin/provider/timer_provider.dart';
import 'package:rootin/utils/add_space.dart';
import 'package:rootin/utils/navigate_skills.dart';
import 'package:rootin/utils/padding_values.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _habitBox = Hive.box("habit_box");
  HabitDatabase db = HabitDatabase();

  @override
  void initState() {
    // if this 1st time opening create default data
    if (_habitBox.get("todo_list") == null) {
      db.createDefaultData();
    } else {
      db.loadData();
    }
    super.initState();
    closeWindow = false;
    Future.delayed(
      const Duration(milliseconds: 10),
      () {
        context.read<MottoProvider>().shuffleWordList();
      },
    );
  }

  final TextEditingController _newHabitController = TextEditingController();

  bool closeWindow = false;

  // create new habit
  void createNewHabit() {
    showDialog(
      context: context,
      builder: (context) {
        return CustomAlertBox(
          controller: _newHabitController,
          hintText: AllStrings.enterHabitName,
          newDay: () => newDay(),
          onCancel: () => cancelButton(),
          onSave: () => saveHabit(),
        );
      },
    );
  }

  // checkbox was tapped
  void checkBoxTapped(bool? value, int index) {
    if (db.habitList[index][1] == false) {
      context.read<FinishedTaskProvider>().taskCompleted(index);
      if (db.habitList.length ==
          context.read<FinishedTaskProvider>().currentCompletedTasks.length) {
        context.read<FinishedTaskProvider>().allTasksFinish(index);
        if (context.read<TimerProvider>().timeLeftHour != 0 ||
            context.read<TimerProvider>().timeLeftMin != 0 ||
            context.read<TimerProvider>().timeLeftSec != 0) {
          context.read<FinishedTaskProvider>().allTasksFinishOnTime(index);
        }
      }
    }
    if (db.habitList[index][1] == true) {
      context.read<FinishedTaskProvider>().cancelTaskCompleted();
      context.read<FinishedTaskProvider>().deleteFromAllCompletedTaskList();
    }
    setState(() {
      db.habitList[index][1] = !db.habitList[index][1];
    });
    db.updateDatabase();
    print("habitlist length:${db.habitList.length}");
    context.read<FinishedTaskProvider>().printFinishedTaskListLength();
    context.read<FinishedTaskProvider>().printAllFinishedTasksLength();
    context.read<FinishedTaskProvider>().printFinishedAllTasksLength();
    context.read<FinishedTaskProvider>().printFinishedAllTasksOnTimeLength();
  }

  // save new task
  void saveHabit() {
    setState(() {
      db.habitList.add([_newHabitController.text, false]);
      _newHabitController.clear();
    });
    Navigator.of(context).pop();
    db.updateDatabase();
  }

  // delete task
  void deleteTask(int index) {
    if (db.habitList[index][1] == true) {
      context.read<FinishedTaskProvider>().cancelTaskCompleted();
    }
    setState(() {
      db.habitList.removeAt(index);
    });
    db.updateDatabase();
  }

  // save edited task
  void saveEditedTask(int index) {
    setState(() {
      db.habitList[index][0] = _newHabitController.text;
      _newHabitController.clear();
    });
    Navigator.of(context).pop();
  }

  // new day button
  void newDay() {
    context.read<FinishedTaskProvider>().resetCompletedTask();
    context.read<MottoProvider>().shuffleWordList();
    if (context.read<TimerProvider>().timeLeftHour != 0 ||
        context.read<TimerProvider>().timeLeftMin != 0 ||
        context.read<TimerProvider>().timeLeftSec != 0) {
      context.read<TimerProvider>().resetTimerValues();
      context.read<TimerProvider>().setTimerReseted();
    }

    setState(() {
      db.resetAllData();
      db.createDefaultData();
      db.updateDatabase();
    });
    NavigateSkills().pushReplacementTo(
      context,
      const LoadingScreen(),
    );
  }

  // cancel button
  void cancelButton() {
    Navigator.of(context).pop();
    _newHabitController.clear();
  }

  // open habit settings
  void openHabitSettings(int index) {
    showDialog(
      context: context,
      builder: (context) {
        return CustomAlertBox(
          controller: _newHabitController,
          hintText: db.habitList[index][0],
          newDay: () => newDay(),
          onCancel: cancelButton,
          onSave: () => saveEditedTask(index),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: PaddingValues.symmetricH20V13,
        child: Column(
          children: [
            AddSpace().addVerticalSpace(10),
            // percent indicator
            CircularPercentIndicator(
              animation: true,
              animationDuration: 1000,
              radius: 100,
              lineWidth: 30,
              percent: context
                      .watch<FinishedTaskProvider>()
                      .currentCompletedTasks
                      .length /
                  db.habitList.length,
              backgroundColor: AllColors.tileBackgroundColor,
              progressColor: AllColors.primaryColor,
              circularStrokeCap: CircularStrokeCap.round,
              center: context
                      .watch<FinishedTaskProvider>()
                      .currentCompletedTasks
                      .isEmpty
                  ? const CustomText(
                      text: "0.0 %",
                      fontSize: 40,
                    )
                  : CustomText(
                      text:
                          "${(context.watch<FinishedTaskProvider>().currentCompletedTasks.length / db.habitList.length * 100).toStringAsFixed(1)} %",
                      fontSize: 40,
                    ),
            ),
            AddSpace().addVerticalSpace(20),
            db.habitList.length ==
                        context
                            .watch<FinishedTaskProvider>()
                            .currentCompletedTasks
                            .length &&
                    closeWindow == false
                ? CongratsContainer(
                    startNewDay: () => newDay(),
                    addMoreTaskButton: () => createNewHabit(),
                    closeTheWindow: () {
                      setState(() {
                        closeWindow = true;
                      });
                    },
                  )
                : AddSpace().addVerticalSpace(1),
            // todos
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: db.habitList.length,
                itemBuilder: (context, index) {
                  return HabitTile(
                    habitName: db.habitList[index][0],
                    value: db.habitList[index][1],
                    deleteTapped: (value) => deleteTask(index),
                    settingsTapped: (value) => openHabitSettings(index),
                    onChanged: (value) => checkBoxTapped(value, index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: MyFab(
        onPressed: () {
          sMBS(
            context,
            () => createNewHabit(),
          );
        },
      ),
    );
  }
}
