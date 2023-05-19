import 'package:flutter/material.dart';

class BorderRadiusValues {
  static const BorderRadius circular12 = BorderRadius.all(Radius.circular(12));
  static const BorderRadius circular8 = BorderRadius.all(Radius.circular(8));
  static const BorderRadius circular40 = BorderRadius.all(Radius.circular(40));
  static const BorderRadius circular20 = BorderRadius.all(Radius.circular(20));
  static const BorderRadius circular16 = BorderRadius.all(Radius.circular(16));
  static const BorderRadius onlyTL40TR40 = BorderRadius.only(
      topLeft: Radius.circular(40), topRight: Radius.circular(40));
}
