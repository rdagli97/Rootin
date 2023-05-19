import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rootin/consts/colors.dart';

class MyFab extends StatelessWidget {
  final Function()? onPressed;
  const MyFab({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: AllColors.tileBackgroundColor,
      child: LottieBuilder.asset("anims/tired_pencil.json"),
    );
  }
}
