import 'package:flutter/material.dart';
import 'package:monch/src/utils/constants/colors.dart';

class MonchOutlineButtonThemeData {
  MonchOutlineButtonThemeData._();

  static OutlinedButtonThemeData lightOutlinedThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: MonchColors.black,
      side: const BorderSide(color: MonchColors.primary),
      textStyle: const TextStyle(fontSize: 16, color: MonchColors.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical:  16, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
    )
  );

  static OutlinedButtonThemeData darkOutlinedThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: MonchColors.black,
      side: const BorderSide(color: MonchColors.secondary),
      textStyle: const TextStyle(fontSize: 16, color: MonchColors.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical:  16, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
    )
  );
}