import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:monch/src/features/authentication/screens/signup/signup.dart';
import 'package:monch/src/utils/constants/sizes.dart';
import 'package:monch/src/utils/constants/texts_strings.dart';

class MonchLoginForm extends StatelessWidget {
  const MonchLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(
          vertical: MonchSizes.spaceBwSections),
      child: Column(
        children: [
          // Email
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: MonchTexts.email),
          ),
          const SizedBox(height: MonchSizes.spaceBwInputFields),
    
          // Password
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: MonchTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash)),
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
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(MonchTexts.rememberMe),
                ],
              ),
    
              // Forgot password
              TextButton(
                  onPressed: () {},
                  child: const Text(MonchTexts.forgotPassword)),
            ],
          ),
          const SizedBox(height: MonchSizes.spaceBwSections),
    
          // Sign in button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
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
