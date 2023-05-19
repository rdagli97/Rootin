import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rootin/bottomsheet_pages/stats_page.dart';
import 'package:rootin/components/custom_elevated_button.dart';
import 'package:rootin/components/custom_smbs.dart';
import 'package:rootin/components/custom_text.dart';
import 'package:rootin/consts/colors.dart';
import 'package:rootin/consts/strings.dart';
import 'package:rootin/utils/add_space.dart';

class CongratsContainer extends StatelessWidget {
  final Function()? startNewDay;
  final Function()? closeTheWindow;
  final Function()? addMoreTaskButton;
  const CongratsContainer({
    super.key,
    required this.startNewDay,
    required this.closeTheWindow,
    required this.addMoreTaskButton,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: Stack(
        children: [
          Center(
            child: Lottie.asset(
              "anims/congrats-anim.json",
              repeat: false,
            ),
          ),
          Column(
            children: [
              // Congrats Text
              const CustomText(
                text: AllStrings.congratulations,
                color: AllColors.primaryColor,
                fontSize: 18,
              ),
              AddSpace().addVerticalSpace(10),
              // All Tasks Done Text
              const CustomText(
                text: AllStrings.allTasksDone,
                color: AllColors.primaryColor,
                fontSize: 18,
              ),
              AddSpace().addVerticalSpace(20),
              Row(
                children: [
                  AddSpace().addHorizontalSpace(120),
                  Column(
                    children: [
                      // See Stats Button
                      CustomButton(
                        width: 120,
                        onTap: () {
                          return customSMBS(
                            context,
                            const StatsPage(),
                            400,
                          );
                        },
                        child: const CustomText(text: AllStrings.seeStats),
                      ),
                      // Start new day button
                      AddSpace().addVerticalSpace(10),
                      CustomButton(
                        width: 120,
                        onTap: startNewDay,
                        child: const CustomText(text: AllStrings.startNewDay),
                      ),
                    ],
                  ),
                  // close the window button
                  AddSpace().addHorizontalSpace(40),
                  CustomButton(
                    onTap: closeTheWindow,
                    child: const Icon(
                      Icons.close,
                      color: AllColors.white54,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
