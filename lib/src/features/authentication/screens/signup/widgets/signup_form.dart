import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:monch/src/features/authentication/controllers/signup/signup_controller.dart';
import 'package:monch/src/features/authentication/screens/signup/verify_email.dart';
import 'package:monch/src/features/authentication/screens/signup/widgets/signup_terms_and_condtions.dart';
import 'package:monch/src/utils/constants/colors.dart';
import 'package:monch/src/utils/constants/sizes.dart';
import 'package:monch/src/utils/constants/texts_strings.dart';
import 'package:monch/src/utils/helpers/helper_functions.dart';
import 'package:monch/src/utils/validators/validation.dart';

class MonchSignupForm extends StatelessWidget {
  const MonchSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
        key: controller.signupFormKey,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: controller.firstName,
                    validator: (value) =>
                        MonchValidator.validateEmptyText('First name', value),
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: MonchTexts.firstName,
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                ),
                const SizedBox(width: MonchSizes.spaceBwInputFields),
                Expanded(
                  child: TextFormField(
                    controller: controller.lastName,
                    validator: (value) =>
                        MonchValidator.validateEmptyText('Last name', value),
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: MonchTexts.lastName,
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: MonchSizes.spaceBwInputFields,
            ),

            // Username
            TextFormField(
              controller: controller.username,
              validator: (value) =>
                  MonchValidator.validateEmptyText('Username', value),
              expands: false,
              decoration: const InputDecoration(
                  labelText: MonchTexts.username,
                  prefixIcon: Icon(Iconsax.user_edit)),
            ),
            const SizedBox(
              height: MonchSizes.spaceBwInputFields,
            ),

            // Email
            TextFormField(
              controller: controller.email,
              validator: (value) => MonchValidator.validateEmail(value),
              expands: false,
              decoration: const InputDecoration(
                  labelText: MonchTexts.email,
                  prefixIcon: Icon(Iconsax.direct)),
            ),
            const SizedBox(
              height: MonchSizes.spaceBwInputFields,
            ),

            // Phone number
            TextFormField(
              controller: controller.phoneNumber,
              validator: (value) => MonchValidator.validatePhoneNumber(value),
              expands: false,
              decoration: const InputDecoration(
                  labelText: MonchTexts.phoneNumber,
                  prefixIcon: Icon(Iconsax.call)),
            ),
            const SizedBox(
              height: MonchSizes.spaceBwInputFields,
            ),

            // Password
            Obx(
              () => TextFormField(
                controller: controller.password,
                validator: (value) => MonchValidator.validatePassword(value),
                obscureText: controller.hidePassword.value,
                decoration: InputDecoration(
                  labelText: MonchTexts.password,
                  prefixIcon: const Icon(Iconsax.password_check),
                  suffixIcon: IconButton(
                      onPressed: () => controller.hidePassword.value =
                          !controller.hidePassword.value,
                      icon: Icon(controller.hidePassword.value
                          ? Iconsax.eye_slash
                          : Iconsax.eye)),
                ),
              ),
            ),
            const SizedBox(
              height: MonchSizes.spaceBwSections,
            ),

            // Terms and conditions checkbox
            const MonchTermsAndConditionsCheckbox(),

            const SizedBox(
              height: MonchSizes.spaceBwSections,
            ),

            // Signup button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(
                    () => const VerifyEmailScreen()), // controller.signup(),
                child: const Text(MonchTexts.createAccount),
              ),
            ),
          ],
        ));
  }
}
