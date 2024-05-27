import 'package:flutter/material.dart';
import 'package:monch/src/utils/constants/colors.dart';

class MonchAppBarTheme {
  MonchAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: MonchColors.primary, size: 24),
    actionsIconTheme: IconThemeData(color: MonchColors.primary, size: 24),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black)
  );

  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: MonchColors.secondary, size: 24),
    actionsIconTheme: IconThemeData(color: MonchColors.secondary, size: 24),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: MonchColors.light)
  );
}