import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:monch/src/utils/constants/image_strings.dart';
import 'package:monch/src/utils/constants/sizes.dart';
import 'package:monch/src/utils/constants/texts_strings.dart';
import 'package:monch/src/utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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

              // Title and subtitle
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
                  onPressed: ()  {}, // => Get.to(() => const LoginScreen()),
                  child: const Text('Done'),
                ),
              ),
              const SizedBox(height: MonchSizes.spaceBwItems,),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {}, // => Get.to(() => const LoginScreen()),
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
