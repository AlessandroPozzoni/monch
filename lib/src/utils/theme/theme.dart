import 'package:flutter/material.dart';

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
    primaryColor: Colors.brown,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: CustomAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: CustomBottomSheetThemeData.lightBottomSheetThemeData,
    checkboxTheme: CustomCheckboxThemeData.lightCheckboxThemeData,
    chipTheme: CustomChipThemeData.lightChipThemeData,
    elevatedButtonTheme: CustomElevatedButtonThemeData.lightElevatedButtonThemeData,
    outlinedButtonTheme: CustomOutlineButtonThemeData.lightOutlinedThemeData,
    inputDecorationTheme: CustomTextFieldTheme.lightInputDecoratorTheme,
    textTheme: CustomTextTheme.lightTextTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.brown,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: CustomAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: CustomBottomSheetThemeData.darkBottomSheetThemeData,
    checkboxTheme: CustomCheckboxThemeData.darkCheckboxThemeData,
    chipTheme: CustomChipThemeData.darkChipThemeData,
    elevatedButtonTheme: CustomElevatedButtonThemeData.darkElevatedButtonThemeData,
    outlinedButtonTheme: CustomOutlineButtonThemeData.darkOutlinedThemeData,
    inputDecorationTheme: CustomTextFieldTheme.darkInputDecoratorTheme,
    textTheme: CustomTextTheme.darkTextTheme,
  );
}