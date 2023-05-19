import 'package:flutter/material.dart';
import 'package:rootin/components/custom_text.dart';
import 'package:rootin/consts/colors.dart';
import 'package:rootin/utils/add_space.dart';
import 'package:rootin/utils/border_radius_values.dart';

class RankTile extends StatelessWidget {
  final String text;
  final String assetName;
  const RankTile({
    super.key,
    required this.text,
    required this.assetName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: const BoxDecoration(
        color: AllColors.tileBackgroundColor,
        borderRadius: BorderRadiusValues.circular20,
      ),
      child: Column(
        children: [
          CustomText(text: text),
          AddSpace().addVerticalSpace(10),
          Image.asset(
            assetName,
            scale: 10,
          ),
        ],
      ),
    );
  }
}
