import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monch/src/common/widgets/styles/spacing_styles.dart';
import 'package:monch/src/features/authentication/screens/login/login.dart';
import 'package:monch/src/utils/constants/sizes.dart';
import 'package:monch/src/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subtitle, this.onPressed});

  final String image, title, subtitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MonchSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              // Image
              Image(
                  image: AssetImage(image),
                  width: MonchHelperFunctions.screenWidth() * 0.6),
              const SizedBox(
                height: MonchSizes.spaceBwSections,
              ),

              // Title and subtitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MonchSizes.spaceBwSections,
              ),
              Text(
                subtitle,
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
                  onPressed: () => Get.to(() => const LoginScreen()),
                  child: const Text('Continue'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
