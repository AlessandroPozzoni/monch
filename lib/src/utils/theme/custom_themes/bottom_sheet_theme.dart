import 'package:flutter/material.dart';

class MonchBottomSheetThemeData {
  MonchBottomSheetThemeData._();

  static BottomSheetThemeData lightBottomSheetThemeData = BottomSheetThemeData(
    showDragHandle: false,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
  );

  static BottomSheetThemeData darkBottomSheetThemeData = BottomSheetThemeData(
    showDragHandle: false,
    backgroundColor: Colors.black,
    modalBackgroundColor: Colors.black,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
  );
}
