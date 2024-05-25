import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:monch/src/features/authentication/controllers/onboarding/onboarding.controller.dart';
import 'package:monch/src/features/authentication/screens/onboarding/onboarding_next_button.dart';
import 'package:monch/src/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:monch/src/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:monch/src/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:monch/src/utils/constants/colors.dart';
import 'package:monch/src/utils/constants/image_strings.dart';
import 'package:monch/src/utils/constants/sizes.dart';
import 'package:monch/src/utils/constants/texts_strings.dart';
import 'package:monch/src/utils/device/device_utility.dart';
import 'package:monch/src/utils/helpers/helper_functions.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());


    return Scaffold(
        body: Stack(
      children: [
        // Horizontal scrollable pages
        PageView(
          children: const [
            OnBoardingPage(
              image: MonchImages.flutterLogo,
              title: MonchTexts.onBoardingTitle1,
              subtitle: MonchTexts.onBoardingSubtitle1,
            ),
            OnBoardingPage(
              image: MonchImages.flutterLogo,
              title: MonchTexts.onBoardingTitle2,
              subtitle: MonchTexts.onBoardingSubtitle2,
            ),
            OnBoardingPage(
              image: MonchImages.flutterLogo,
              title: MonchTexts.onBoardingTitle3,
              subtitle: MonchTexts.onBoardingSubtitle3,
            ),
          ],
        ),

        // Skip button
        const OnBoardingSkip(),

        // Dot navigation SmoothPageIndicator
        const OnBoardingDotNavigation(),

        // Circular button
        const OnBoardingNextButton()
      ],
    ));
  }
}

