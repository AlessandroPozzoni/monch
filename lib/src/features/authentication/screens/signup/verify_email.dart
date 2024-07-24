import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:monch/src/common/widgets/success_screen/success_screen.dart';
import 'package:monch/src/data/repositories/authentication/authentication_repository.dart';
import 'package:monch/src/features/authentication/controllers/signup/verify_email_controller.dart';
import 'package:monch/src/features/authentication/screens/login/login.dart';
import 'package:monch/src/utils/constants/image_strings.dart';
import 'package:monch/src/utils/constants/sizes.dart';
import 'package:monch/src/utils/helpers/helper_functions.dart';
import 'package:monch/src/utils/constants/texts_strings.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key, this.email});

  final String? email;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyEmailController());

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => AuthenticationRepository.instance.logout(),
              icon: const Icon(Iconsax.close_square))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MonchSizes.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(
                  image: AssetImage(MonchImages.flutterLogo),
                  width: MonchHelperFunctions.screenWidth() * 0.6),
              const SizedBox(
                height: MonchSizes.spaceBwSections,
              ),

              // Title and subtitle
              Text(
                MonchTexts.confirmEmailTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MonchSizes.spaceBwSections,
              ),
              Text(
                email ?? '',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MonchSizes.spaceBwSections,
              ),
              Text(
                MonchTexts.confirmEmailSubtitle,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MonchSizes.spaceBwSections,
              ),

              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => controller.checkEmailVerification(),
                  child: const Text('continue'),
                ),
              ),
              const SizedBox(
                height: MonchSizes.spaceBwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () =>controller.sendEmailVerification(),
                  child: const Text('Resend email'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
