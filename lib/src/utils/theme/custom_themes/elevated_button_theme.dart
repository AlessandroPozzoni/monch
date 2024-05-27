import 'package:flutter/material.dart';
import 'package:monch/src/utils/constants/colors.dart';

class MonchElevatedButtonThemeData {
  MonchElevatedButtonThemeData._();

  static ElevatedButtonThemeData lightElevatedButtonThemeData = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: MonchColors.white,
      backgroundColor: MonchColors.primary,
      disabledForegroundColor: MonchColors.grey,
      disabledBackgroundColor: MonchColors.grey,
      side: const BorderSide(color: MonchColors.primary),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(fontSize: 16, color: MonchColors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),

  );

  static ElevatedButtonThemeData darkElevatedButtonThemeData = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: MonchColors.white,
      backgroundColor: MonchColors.secondary,
      disabledForegroundColor: MonchColors.grey,
      disabledBackgroundColor: MonchColors.grey,
      side: const BorderSide(color: MonchColors.secondary),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(fontSize: 16, color: MonchColors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );

}