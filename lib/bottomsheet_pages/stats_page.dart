import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rootin/achievements/all_completed_tasks_images.dart';
import 'package:rootin/achievements/completed_all_tasks_images.dart';
import 'package:rootin/achievements/completed_all_tasks_ontime_images.dart';
import 'package:rootin/bottomsheet_pages/rank_info_page.dart';
import 'package:rootin/components/custom_elevated_button.dart';
import 'package:rootin/components/custom_smbs.dart';
import 'package:rootin/components/stats_tile.dart';
import 'package:rootin/consts/strings.dart';
import 'package:rootin/data/habit_database.dart';
import 'package:rootin/pages/home_page.dart';
import 'package:rootin/pages/loading_screen.dart';
import 'package:rootin/provider/finished_task_provider.dart';
import 'package:rootin/utils/add_space.dart';

class StatsPage extends StatefulWidget {
  const StatsPage({super.key});

  @override
  State<StatsPage> createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {
  HabitDatabase db = HabitDatabase();

  void resetButton(BuildContext context) {
    context.read<FinishedTaskProvider>().resetAllStats();
    context.read<FinishedTaskProvider>().resetCompletedTask();
    context.read<FinishedTaskProvider>().resetHabitBox();
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const LoadingScreen(),
      ),
    );
  }

  Future<dynamic> rankInfoButton(BuildContext context) {
    return customSMBS(context, const RankInfoPage(), 150);
  }

  HomePage homePage = const HomePage();
  @override
  Widget build(BuildContext context) {
    FinishedTaskProvider watchProvider = context.watch<FinishedTaskProvider>();
    List<StatsTile> statsTileList = [
      StatsTile(
        image: const AllCompletedTasksImages(),
        title: AllStrings.totalCompletedTask,
        score: watchProvider.allCompletedTasks.length.toString(),
      ),
      StatsTile(
        image: const CompletedallTasksOnTimeImages(),
        title: AllStrings.completedAllTasksOnTime,
        score: watchProvider.finishedAllTasksOnTime.length.toString(),
      ),
      StatsTile(
        image: const CompletedAllTasksImages(),
        title: AllStrings.completedAllTasks,
        score: watchProvider.finishedAllTasks.length.toString(),
      ),
    ];
    return Column(
      children: [
        AddSpace().addVerticalSpace(50),
        // grid view
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.7 / 1,
            ),
            itemCount: statsTileList.length,
            itemBuilder: (context, index) {
              return StatsTile(
                image: statsTileList[index].image,
                title: statsTileList[index].title,
                score: statsTileList[index].score,
              );
            },
          ),
        ),
        AddSpace().addVerticalSpace(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // rank info button
            IconButton(
              onPressed: () => rankInfoButton(context),
              icon: const Icon(Icons.info_outline_rounded),
            ),
            // reset button
            CustomButton(
              height: 40,
              width: 100,
              onTap: () => resetButton(context),
              child: const Text(
                AllStrings.resetStats,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        AddSpace().addVerticalSpace(20),
      ],
    );
  }
}
