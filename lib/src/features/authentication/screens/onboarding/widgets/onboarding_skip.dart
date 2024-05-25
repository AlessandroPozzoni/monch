import 'package:flutter/material.dart';
import 'package:monch/src/features/authentication/controllers/onboarding/onboarding.controller.dart';
import 'package:monch/src/utils/constants/sizes.dart';
import 'package:monch/src/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: MonchDeviceUtils.getAppBarHeight(),
        right: MonchSizes.defaultSpace,
        child: TextButton(
            onPressed: () => OnBoardingController.instance.skipPages(),
            child: Text(
              'Too hungry? Skip',
              style: Theme.of(context).textTheme.titleSmall,
            )));
  }
}
