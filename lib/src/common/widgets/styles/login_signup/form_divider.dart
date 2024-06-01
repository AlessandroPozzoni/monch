import 'package:flutter/material.dart';
import 'package:monch/src/utils/constants/colors.dart';
import 'package:monch/src/utils/helpers/helper_functions.dart';

class MonchFormDivider extends StatelessWidget {
  const MonchFormDivider({
    super.key,
    required this.dividerText
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = MonchHelperFunctions.isDarkMode(context);

    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Flexible(child: Divider(color: dark ? MonchColors.black : MonchColors.grey, thickness: 0.5, indent: 60, endIndent: 5,)),
      Text(dividerText, style: Theme.of(context).textTheme.labelMedium,),
      Flexible(child: Divider(color: dark ? MonchColors.black : MonchColors.grey, thickness: 0.5, indent: 5, endIndent: 60,))
    ],);
  }
}