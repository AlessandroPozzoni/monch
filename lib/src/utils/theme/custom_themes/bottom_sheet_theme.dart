import 'package:flutter/material.dart';
import 'package:monch/src/utils/constants/colors.dart';

class MonchBottomSheetThemeData {
  MonchBottomSheetThemeData._();

  static BottomSheetThemeData lightBottomSheetThemeData = BottomSheetThemeData(
    showDragHandle: false,
    backgroundColor: MonchColors.lightContainer,
    modalBackgroundColor: MonchColors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
  );

  static BottomSheetThemeData darkBottomSheetThemeData = BottomSheetThemeData(
    showDragHandle: false,
    backgroundColor: MonchColors.darkContainer,
    modalBackgroundColor: MonchColors.black,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
  );
}
