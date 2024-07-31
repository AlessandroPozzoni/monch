import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:monch/src/features/authentication/controllers/forgot_password/forgot_password_controller.dart';
import 'package:monch/src/features/authentication/screens/login/login.dart';
import 'package:monch/src/utils/constants/image_strings.dart';
import 'package:monch/src/utils/constants/sizes.dart';
import 'package:monch/src/utils/constants/texts_strings.dart';
import 'package:monch/src/utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(Iconsax.close_square))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MonchSizes.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(
                  image: const AssetImage(MonchImages.flutterLogo),
                  width: MonchHelperFunctions.screenWidth() * 0.6),
              const SizedBox(
                height: MonchSizes.spaceBwSections,
              ),

              // Email, title and subtitle
              Text(
                email,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MonchSizes.spaceBwSections,
              ),
              Text(
                MonchTexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MonchSizes.spaceBwSections,
              ),
              Text(
                MonchTexts.changeYourPasswordSubtitle,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MonchSizes.spaceBwSections,
              ),

              // Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.offAll(() => const LoginScreen()),
                  child: const Text('Done'),
                ),
              ),
              const SizedBox(height: MonchSizes.spaceBwItems,),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () => ForgotPasswordController.instance.resendPasswordResetEmail(email),
                  child: const Text(MonchTexts.resendEmail),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
