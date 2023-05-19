import 'package:flutter/material.dart';
import 'package:rootin/bottomsheet_pages/motto_page.dart';
import 'package:rootin/bottomsheet_pages/stats_page.dart';
import 'package:rootin/bottomsheet_pages/timer_page.dart';
import 'package:rootin/components/custom_elevated_button.dart';
import 'package:rootin/components/custom_smbs.dart';
import 'package:rootin/consts/colors.dart';
import 'package:rootin/utils/border_radius_values.dart';
import 'package:rootin/utils/navigate_skills.dart';

Future<dynamic> sMBS(BuildContext context, Function()? addAlertBox) async {
  return showModalBottomSheet(
    backgroundColor: AllColors.smbsColor.withOpacity(0),
    context: context,
    builder: (context) {
      return Container(
        height: 100,
        decoration: const BoxDecoration(
          color: AllColors.tileBackgroundColor,
          borderRadius: BorderRadiusValues.onlyTL40TR40,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Timer
              CustomButton(
                onTap: () {
                  customSMBS(
                    context,
                    const TimerPage(),
                    400,
                  );
                },
                child: const Icon(Icons.watch_later_outlined),
              ),
              // Add button
              CustomButton(
                onTap: addAlertBox,
                child: const Icon(Icons.add),
              ),
              // Motto button
              CustomButton(
                onTap: () {
                  customSMBS(
                    context,
                    const MottoPage(),
                    400,
                  );
                },
                child: const Icon(Icons.light_rounded),
              ),
              // Stats button
              CustomButton(
                onTap: () {
                  customSMBS(
                    context,
                    const StatsPage(),
                    400,
                  );
                },
                child: const Icon(Icons.account_circle_rounded),
              ),
              // Close button
              CustomButton(
                onTap: () {
                  NavigateSkills().pop(context);
                },
                child: const Icon(Icons.arrow_drop_down_rounded),
              ),
            ],
          ),
        ),
      );
    },
  );
}
