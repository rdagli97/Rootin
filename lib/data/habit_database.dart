import 'package:hive_flutter/hive_flutter.dart';

class HabitDatabase {
  List habitList = [];

  // reference our box
  final habitBox = Hive.box("habit_box");

  // for 1st time create default data
  void createDefaultData() {
    habitList = [
      ["Run", false],
      ["Read", false],
    ];
  }

  // load data from database
  void loadData() {
    habitList = habitBox.get("todo_list");
  }

  // update data
  void updateDatabase() {
    habitBox.put("todo_list", habitList);
  }

  // reset datas
  void resetAllData() {
    habitBox.clear();
  }
}
