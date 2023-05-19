import 'package:flutter/material.dart';
import 'package:rootin/components/custom_text.dart';
import 'package:rootin/consts/colors.dart';
import 'package:rootin/utils/add_space.dart';
import 'package:rootin/utils/border_radius_values.dart';

class StatsTile extends StatelessWidget {
  final String title;
  final String score;
  final Widget image;
  const StatsTile({
    super.key,
    required this.title,
    required this.score,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // achievement icon
        image,
        // title
        Text(title),
        AddSpace().addVerticalSpace(10),
        // score container
        Container(
          height: 60,
          width: 150,
          decoration: const BoxDecoration(
            color: AllColors.buttonBackgroundColor,
            borderRadius: BorderRadiusValues.circular12,
          ),
          child: Center(
            child: CustomText(
              text: score,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
