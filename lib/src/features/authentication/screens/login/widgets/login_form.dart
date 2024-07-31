import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:iconsax/iconsax.dart';
import 'package:monch/src/features/authentication/controllers/login/login_controller.dart';
import 'package:monch/src/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:monch/src/features/authentication/screens/signup/signup.dart';
import 'package:monch/src/utils/constants/sizes.dart';
import 'package:monch/src/utils/constants/texts_strings.dart';
import 'package:monch/src/utils/validators/validation.dart';

class MonchLoginForm extends StatelessWidget {
  const MonchLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Form(
        key: controller.loginFormKey,
        child: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: MonchSizes.spaceBwSections),
          child: Column(
            children: [
              // Email
              TextFormField(
                controller: controller.email,
                validator: (value) => MonchValidator.validateEmail(value),
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText: MonchTexts.email),
              ),
              const SizedBox(height: MonchSizes.spaceBwInputFields),

              // Password
              Obx(
                // Observer of the value of the hidePassword variable
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
                height: MonchSizes.spaceBwInputFields / 2,
              ),

              // Remember me & Forgot password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Remember me
                  Row(
                    children: [
                      Obx(() => Checkbox(
                          // Observer of the value of the hidePassword variable
                          value: controller.rememberMe.value,
                          onChanged: (value) => controller.rememberMe.value =
                              !controller.rememberMe.value)),
                      const Text(MonchTexts.rememberMe),
                    ],
                  ),

                  // Forgot password
                  TextButton(
                      onPressed: () => Get.to(() => const ForgotPassword()),
                      child: const Text(MonchTexts.forgotPassword)),
                ],
              ),
              const SizedBox(height: MonchSizes.spaceBwSections),

              // Sign in button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => controller.emailAndPasswordSignIn(),
                      child: const Text(MonchTexts.signIn))),
              const SizedBox(height: MonchSizes.spaceBwItems),

              // Create account button
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () => Get.to(() => const SignupScreen()),
                      child: const Text(MonchTexts.createAccount))),
              // const SizedBox(height: MonchSizes.spaceBwSections),
            ],
          ),
        ));
  }
}
