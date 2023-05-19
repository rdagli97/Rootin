import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:rootin/data/habit_database.dart';
import 'package:rootin/provider/timer_provider.dart';

class FinishedTaskProvider extends ChangeNotifier {
  Box currentCompletedTasks = Hive.box("current_completed_tasks");
  Box allCompletedTasks = Hive.box("all_completed_tasks");
  Box finishedAllTasks = Hive.box("finished_all_tasks");
  Box finishedAllTasksOnTime = Hive.box("finished_all_tasks_on_time");
  Box habitListBox = Hive.box("habit_box");

  HabitDatabase db = HabitDatabase();

  TimerProvider timerProvider = TimerProvider();

  bool isNotHomePage = false;

  void setIsHomePage() {
    isNotHomePage = true;
    notifyListeners();
  }

  void printFinishedTaskListLength() {
    print(
        "current completed task list length: ${currentCompletedTasks.length}");
    notifyListeners();
  }

  void printAllFinishedTasksLength() {
    print("all completed tasks list length: ${allCompletedTasks.length}");
    notifyListeners();
  }

  void printFinishedAllTasksLength() {
    print("finished all tasks: ${finishedAllTasks.length}");
    notifyListeners();
  }

  void printFinishedAllTasksOnTimeLength() {
    print("finished all tasks on time: ${finishedAllTasksOnTime.length}");
    notifyListeners();
  }

  // current task completed
  void taskCompleted(int index) {
    currentCompletedTasks.add(index);
    allCompletedTasks.add(index);
    notifyListeners();
  }

  // current task cancel
  void cancelTaskCompleted() {
    currentCompletedTasks.deleteAt(0);
    notifyListeners();
  }

  // delete from all completed task list
  void deleteFromAllCompletedTaskList() {
    allCompletedTasks.deleteAt(0);
    notifyListeners();
  }

  // reset current completed task
  void resetCompletedTask() {
    currentCompletedTasks.clear();
    notifyListeners();
  }

  // finished all tasks

  void allTasksFinish(int index) {
    finishedAllTasks.add(index);
    notifyListeners();
  }

  // finished all tasks on time

  void allTasksFinishOnTime(int index) {
    finishedAllTasksOnTime.add(index);
    notifyListeners();
  }

  void resetAllStats() {
    finishedAllTasksOnTime.clear();
    finishedAllTasks.clear();
    allCompletedTasks.clear();
    notifyListeners();
  }

  void resetHabitBox() {
    db.habitBox.clear();
    resetCompletedTask();
    notifyListeners();
  }
}
