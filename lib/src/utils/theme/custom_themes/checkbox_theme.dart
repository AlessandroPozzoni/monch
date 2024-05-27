import 'package:flutter/material.dart';
import 'package:monch/src/utils/constants/colors.dart';

class MonchCheckboxThemeData {
  MonchCheckboxThemeData._();

  static CheckboxThemeData lightCheckboxThemeData = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected)) {
        return MonchColors.white;
      } else {
        return MonchColors.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected)) {
        return MonchColors.primary;
      } else {
        return Colors.transparent;
      }
    })
  );

  static CheckboxThemeData darkCheckboxThemeData = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected)) {
        return MonchColors.white;
      } else {
        return MonchColors.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected)) {
        return MonchColors.secondary;
      } else {
        return Colors.transparent;
      }
    })
  );
}