import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:monch/src/common/widgets/success_screen/success_screen.dart';
import 'package:monch/src/features/authentication/screens/login/login.dart';
import 'package:monch/src/utils/constants/image_strings.dart';
import 'package:monch/src/utils/constants/sizes.dart';
import 'package:monch/src/utils/helpers/helper_functions.dart';
import 'package:monch/src/utils/constants/texts_strings.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
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
                'todo@user.com',
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
                  onPressed: () => Get.to(() => SuccessScreen(
                    image: MonchImages.flutterLogo,
                    title: MonchTexts.accountCreatedTitle,
                    subtitle: MonchTexts.accountCreatedSubtitle,
                    onPressed: () => Get.to(() => const LoginScreen()),
                  )),
                  child: const Text('continue'),
                ),
              ),
              const SizedBox(
                height: MonchSizes.spaceBwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
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
