import 'package:flutter/material.dart';
import 'package:rootin/consts/colors.dart';
import 'package:rootin/consts/strings.dart';

class CustomAlertBox extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Function()? onSave;
  final Function()? onCancel;
  final Function()? newDay;
  const CustomAlertBox({
    super.key,
    required this.controller,
    required this.hintText,
    required this.onCancel,
    required this.onSave,
    required this.newDay,
  });
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AllColors.tileBackgroundColor,
      content: TextField(
        controller: controller,
        style: const TextStyle(
          color: AllColors.white,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: AllColors.white54,
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AllColors.white,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AllColors.white,
            ),
          ),
        ),
      ),
      actions: [
        // save button
        MaterialButton(
          onPressed: onSave,
          color: AllColors.white,
          child: const Text(
            AllStrings.save,
            style: TextStyle(
              color: AllColors.tileBackgroundColor,
            ),
          ),
        ),
        // cancel button
        MaterialButton(
          onPressed: onCancel,
          color: AllColors.white,
          child: const Text(
            AllStrings.cancel,
            style: TextStyle(
              color: AllColors.tileBackgroundColor,
            ),
          ),
        ),
        // new day button
        MaterialButton(
          onPressed: newDay,
          color: AllColors.white,
          child: const Text(
            AllStrings.newDay,
            style: TextStyle(
              color: AllColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
