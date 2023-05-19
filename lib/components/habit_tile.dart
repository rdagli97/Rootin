import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:rootin/consts/colors.dart';
import 'package:rootin/utils/border_radius_values.dart';
import 'package:rootin/utils/padding_values.dart';

class HabitTile extends StatelessWidget {
  final Function(bool?)? onChanged;
  final bool value;
  final String habitName;
  final Function(BuildContext)? settingsTapped;
  final Function(BuildContext)? deleteTapped;
  const HabitTile({
    super.key,
    required this.habitName,
    required this.onChanged,
    required this.value,
    required this.deleteTapped,
    required this.settingsTapped,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingValues.all16,
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            // settings option
            SlidableAction(
              onPressed: settingsTapped,
              backgroundColor: AllColors.greyS200,
              icon: Icons.settings,
              borderRadius: BorderRadiusValues.circular12,
            ),
            // delete option
            SlidableAction(
              onPressed: deleteTapped,
              backgroundColor: AllColors.redS300,
              icon: Icons.delete,
              borderRadius: BorderRadiusValues.circular12,
            ),
          ],
        ),
        child: Container(
          padding: PaddingValues.all16,
          decoration: const BoxDecoration(
            color: AllColors.tileBackgroundColor,
            borderRadius: BorderRadiusValues.circular8,
          ),
          child: Row(
            children: [
              // check box
              Checkbox(
                onChanged: onChanged,
                value: value,
                activeColor: AllColors.primaryColor,
              ),
              // habit name
              Text(
                habitName,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
