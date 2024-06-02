import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monch/src/common/widgets/styles/loaders/animation_loader.dart';
import 'package:monch/src/utils/constants/colors.dart';
import 'package:monch/src/utils/helpers/helper_functions.dart';

class MonchFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => PopScope(
            canPop: false,
            child: Container(
              color: MonchHelperFunctions.isDarkMode(Get.context!)
                  ? MonchColors.dark
                  : MonchColors.white,
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  const SizedBox(
                    height: 250,
                  ),
                  MonchAnimationLoaderWidget(text: text, animation: animation),
                ],
              ),
            )));
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
