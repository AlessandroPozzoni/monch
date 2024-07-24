import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import 'package:monch/src/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:monch/src/utils/constants/sizes.dart';
import 'package:monch/src/utils/constants/texts_strings.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(MonchSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Headings
            Text(MonchTexts.forgotPasswordTitle, style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: MonchSizes.spaceBwItems,),
            Text(MonchTexts.forgotPasswordSubtitle, style: Theme.of(context).textTheme.labelMedium,),
            const SizedBox(height: MonchSizes.spaceBwSections * 2,),

            // Text field
            TextFormField(
              decoration: const InputDecoration(labelText: MonchTexts.email, prefixIcon: Icon(Iconsax.direct_right)),
            ),

            const SizedBox(height: MonchSizes.spaceBwSections),

            // Submit button
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const ResetPassword()), child: const Text('Submit'))),
            

          ],
        ),
      ),
    );
  }
}
