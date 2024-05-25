import 'package:flutter/material.dart';
import 'package:monch/src/utils/constants/colors.dart';
import 'package:monch/src/utils/constants/sizes.dart';
import 'package:monch/src/utils/device/device_utility.dart';
import 'package:monch/src/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MonchHelperFunctions.isDarkMode(context);

    return Positioned(
        bottom: MonchDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: MonchSizes.defaultSpace,
        child: SmoothPageIndicator(
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? MonchColors.light : MonchColors.dark, dotHeight: 6),
          controller: PageController(),
          count: 3,
        ));
  }
}
