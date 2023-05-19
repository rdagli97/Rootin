import 'package:flutter/material.dart';
import 'package:rootin/consts/colors.dart';
import 'package:rootin/utils/border_radius_values.dart';

class CustomButton extends StatelessWidget {
  final Function()? onTap;
  final Widget? child;
  final double? height;
  final double? width;
  const CustomButton({
    super.key,
    required this.onTap,
    required this.child,
    this.height = 40,
    this.width = 60,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          color: AllColors.buttonBackgroundColor,
          borderRadius: BorderRadiusValues.circular16,
        ),
        child: Center(child: child),
      ),
    );
  }
}
