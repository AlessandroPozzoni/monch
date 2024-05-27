import 'package:flutter/material.dart';
import 'package:monch/src/utils/constants/colors.dart';

import 'package:monch/src/utils/theme/custom_themes/appbar_theme.dart';
import 'package:monch/src/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:monch/src/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:monch/src/utils/theme/custom_themes/chip_theme.dart';
import 'package:monch/src/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:monch/src/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:monch/src/utils/theme/custom_themes/text_field_theme.dart';
import 'package:monch/src/utils/theme/custom_themes/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: MonchColors.secondary,
    scaffoldBackgroundColor: MonchColors.light,
    appBarTheme: MonchAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: MonchBottomSheetThemeData.lightBottomSheetThemeData,
    checkboxTheme: MonchCheckboxThemeData.lightCheckboxThemeData,
    chipTheme: MonchChipThemeData.lightChipThemeData,
    elevatedButtonTheme: MonchElevatedButtonThemeData.lightElevatedButtonThemeData,
    outlinedButtonTheme: MonchOutlineButtonThemeData.lightOutlinedThemeData,
    inputDecorationTheme: MonchTextFieldTheme.lightInputDecoratorTheme,
    textTheme: MonchTextTheme.lightTextTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: MonchColors.primary,
    scaffoldBackgroundColor: MonchColors.dark,
    appBarTheme: MonchAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: MonchBottomSheetThemeData.darkBottomSheetThemeData,
    checkboxTheme: MonchCheckboxThemeData.darkCheckboxThemeData,
    chipTheme: MonchChipThemeData.darkChipThemeData,
    elevatedButtonTheme: MonchElevatedButtonThemeData.darkElevatedButtonThemeData,
    outlinedButtonTheme: MonchOutlineButtonThemeData.darkOutlinedThemeData,
    inputDecorationTheme: MonchTextFieldTheme.darkInputDecoratorTheme,
    textTheme: MonchTextTheme.darkTextTheme,
  );
}