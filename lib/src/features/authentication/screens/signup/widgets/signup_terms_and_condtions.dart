import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monch/src/features/authentication/controllers/signup/signup_controller.dart';
import 'package:monch/src/utils/constants/colors.dart';
import 'package:monch/src/utils/constants/sizes.dart';
import 'package:monch/src/utils/constants/texts_strings.dart';
import 'package:monch/src/utils/helpers/helper_functions.dart';

class MonchTermsAndConditionsCheckbox extends StatelessWidget {
  const MonchTermsAndConditionsCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;

    final dark = MonchHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Obx(() => Checkbox(
                value: controller.privacyPolicy.value,
                onChanged: (value) => controller.privacyPolicy.value =
                    !controller.privacyPolicy.value))),
        const SizedBox(
          width: MonchSizes.spaceBwItems,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: '${MonchTexts.iAgreeTo} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: MonchTexts.privacyPolicy,
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? MonchColors.white : MonchColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor:
                        dark ? MonchColors.white : MonchColors.primary,
                  )),
          TextSpan(
              text: ' ${MonchTexts.and} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: MonchTexts.termsOfUse,
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? MonchColors.white : MonchColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor:
                        dark ? MonchColors.white : MonchColors.primary,
                  )),
        ])),
      ],
    );
  }
}
