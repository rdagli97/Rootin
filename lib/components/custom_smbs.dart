import 'package:flutter/material.dart';
import 'package:rootin/consts/colors.dart';
import 'package:rootin/utils/border_radius_values.dart';

Future<dynamic> customSMBS(
    BuildContext context, Widget? child, double? height) async {
  return showModalBottomSheet(
    context: context,
    backgroundColor: AllColors.smbsColor.withOpacity(0),
    builder: (context) {
      return Container(
        height: height ?? 400,
        decoration: const BoxDecoration(
          color: AllColors.tileBackgroundColor,
          borderRadius: BorderRadiusValues.onlyTL40TR40,
        ),
        child: child,
      );
    },
  );
}
