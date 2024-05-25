import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';
import 'package:monch/src/utils/constants/colors.dart';import 'package:monch/src/utils/constants/sizes.dart';
import 'package:monch/src/utils/device/device_utility.dart';class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {    
    return Positioned(
        right: MonchSizes.defaultSpace,
        bottom: MonchDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: MonchColors.primary),
          child: const Icon(Iconsax.arrow_right_3),
        ));
  }
}
