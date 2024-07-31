import 'package:flutter/material.dart';
import 'package:monch/src/features/authentication/controllers/onboarding/onboarding_controller.dart';
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
    final controller = OnBoardingController.instance;
    final dark = MonchHelperFunctions.isDarkMode(context);

    return Positioned(
        bottom: MonchDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: MonchSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? MonchColors.secondary : MonchColors.primary, dotHeight: 5),
          count: 3,
        ));
  }
}
