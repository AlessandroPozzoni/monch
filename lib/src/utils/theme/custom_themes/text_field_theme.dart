import 'package:flutter/material.dart';
import 'package:monch/src/utils/constants/colors.dart';

class MonchTextFieldTheme {
  MonchTextFieldTheme._();

  static InputDecorationTheme lightInputDecoratorTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: MonchColors.grey,
    suffixIconColor: MonchColors.grey,
    labelStyle: const TextStyle().copyWith(fontSize: 14, color: MonchColors.black),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: MonchColors.black),
    floatingLabelStyle: const TextStyle().copyWith(color: MonchColors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: MonchColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: MonchColors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: MonchColors.darkerGrey),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: MonchColors.error),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: MonchColors.warning),
    ),
    
  );

  static InputDecorationTheme darkInputDecoratorTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: MonchColors.grey,
    suffixIconColor: MonchColors.grey,
    labelStyle: const TextStyle().copyWith(fontSize: 14, color: MonchColors.black),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: MonchColors.white),
    floatingLabelStyle: const TextStyle().copyWith(color: MonchColors.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: MonchColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: MonchColors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: MonchColors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: MonchColors.error),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: MonchColors.warning),
    ),
    
  );
}