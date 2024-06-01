import 'package:flutter/material.dart';
import 'package:monch/src/utils/constants/image_strings.dart';
import 'package:monch/src/utils/constants/sizes.dart';
import 'package:monch/src/utils/constants/texts_strings.dart';
import 'package:monch/src/utils/helpers/helper_functions.dart';

class MonchLoginHeader extends StatelessWidget {
  const MonchLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MonchHelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(dark
              ? MonchImages.flutterLogo
              : MonchImages.flutterLogo),
        ),
        Text(
          MonchTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: MonchSizes.padS),
        Text(
          MonchTexts.loginSubtitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
