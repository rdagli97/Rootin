import 'package:flutter/material.dart';
import 'package:rootin/components/custom_text.dart';
import 'package:rootin/utils/add_space.dart';

class MottoTile extends StatelessWidget {
  final String asset;
  final String motto;
  final String whoSaid;
  const MottoTile({
    super.key,
    required this.asset,
    required this.motto,
    required this.whoSaid,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // asset
          AddSpace().addVerticalSpace(50),
          Image.asset(
            asset,
            scale: 5,
          ),
          AddSpace().addVerticalSpace(50),
          // motto text
          CustomText(
            text: motto,
            textAlign: TextAlign.center,
            fontSize: 18,
            fontStyle: FontStyle.italic,
          ),
          AddSpace().addVerticalSpace(50),
          // whoSaid text
          CustomText(
            text: whoSaid,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
