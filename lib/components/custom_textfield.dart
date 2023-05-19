import 'package:flutter/material.dart';
import 'package:rootin/consts/colors.dart';
import 'package:rootin/utils/border_radius_values.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final String? hintText;
  const CustomTextfield({
    super.key,
    required this.controller,
    this.keyboardType = TextInputType.number,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: AllColors.buttonBackgroundColor,
          border: const OutlineInputBorder(
            borderRadius: BorderRadiusValues.circular40,
            borderSide: BorderSide(
              color: AllColors.white,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadiusValues.circular20,
            borderSide: BorderSide(
              color: AllColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
