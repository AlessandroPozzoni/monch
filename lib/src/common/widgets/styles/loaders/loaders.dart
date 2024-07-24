import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:monch/src/utils/constants/colors.dart';
import 'package:monch/src/utils/helpers/helper_functions.dart';

class MonchLoaders {
  static hideSnackBar() =>
      ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();

  static customToast({required message}) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(
      elevation: 0,
      duration: const Duration(seconds: 6),
      backgroundColor: Colors.transparent,
      content: Container(
        padding: const EdgeInsets.all(12.0),
        margin: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: MonchHelperFunctions.isDarkMode(Get.context!)
              ? MonchColors.darkerGrey.withOpacity(0.9)
              : MonchColors.grey.withOpacity(0.9),
        ),
        child: Center(
          child: Text(
            message,
            style: Theme.of(Get.context!).textTheme.labelLarge,
          ),
        ),
      ),
    ));
  }

  static successSnackBar({required title, message = '', duration = 3}) {
    Get.snackbar(title, message,
        isDismissible: true,
        shouldIconPulse: true,
        colorText: MonchColors.white,
        backgroundColor: MonchColors.primary,
        snackPosition: SnackPosition.BOTTOM,
        animationDuration: const Duration(milliseconds: 750),
        duration: Duration(seconds: duration),
        forwardAnimationCurve: Curves.easeInQuint,
        reverseAnimationCurve: Curves.easeOutQuint,
        margin: const EdgeInsets.all(10),
        icon: const Icon(
          Iconsax.check,
          color: MonchColors.white,
        ));
  }

  static warningSnackBar({required title, message = '', duration = 3}) {
    Get.snackbar(title, message,
        isDismissible: true,
        shouldIconPulse: true,
        colorText: MonchColors.white,
        backgroundColor: MonchColors.warning,
        snackPosition: SnackPosition.BOTTOM,
        animationDuration: const Duration(milliseconds: 750),
        duration: Duration(seconds: duration),
        forwardAnimationCurve: Curves.easeInQuint,
        reverseAnimationCurve: Curves.easeOutQuint,
        margin: const EdgeInsets.all(20),
        icon: const Icon(
          Iconsax.warning_2,
          color: MonchColors.white,
        ));
  }

  static errorSnackBar({required title, message = '', duration = 3}) {
    Get.snackbar(title, message,
        isDismissible: true,
        shouldIconPulse: true,
        colorText: MonchColors.white,
        backgroundColor: MonchColors.error,
        snackPosition: SnackPosition.BOTTOM,
        animationDuration: const Duration(milliseconds: 750),
        duration: Duration(seconds: duration),
        forwardAnimationCurve: Curves.easeInQuint,
        reverseAnimationCurve: Curves.easeOutQuint,
        margin: const EdgeInsets.all(20),
        icon: const Icon(
          Iconsax.warning_2,
          color: MonchColors.white,
        ));
  }
}
