import 'package:flutter/material.dart';
import 'package:monch/src/utils/constants/colors.dart';

class MonchChipThemeData {
  MonchChipThemeData._();

  static ChipThemeData lightChipThemeData = ChipThemeData(
    disabledColor: MonchColors.buttonDisabled.withOpacity(0.4),
    labelStyle: const TextStyle(color: MonchColors.textPrimary),
    selectedColor: MonchColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: MonchColors.white,
  );

  static ChipThemeData darkChipThemeData = ChipThemeData(
    disabledColor: MonchColors.buttonDisabled.withOpacity(0.4),
    labelStyle: const TextStyle(color: MonchColors.black),
    selectedColor: MonchColors.secondary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: MonchColors.black,
  );

}