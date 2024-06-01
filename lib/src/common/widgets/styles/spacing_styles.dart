import 'package:flutter/material.dart';
import 'package:monch/src/utils/constants/sizes.dart';

class MonchSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: MonchSizes.appBarHeight,
    left: MonchSizes.defaultSpace,
    bottom: MonchSizes.defaultSpace,
    right: MonchSizes.defaultSpace,
  );
}
