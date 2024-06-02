import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:monch/src/features/authentication/screens/signup/widgets/signup_terms_and_condtions.dart';
import 'package:monch/src/utils/constants/colors.dart';
import 'package:monch/src/utils/constants/sizes.dart';
import 'package:monch/src/utils/constants/texts_strings.dart';
import 'package:monch/src/utils/helpers/helper_functions.dart';

class MonchSignupForm extends StatelessWidget {
  const MonchSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: MonchTexts.firstName,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
            const SizedBox(width: MonchSizes.spaceBwInputFields),
            Expanded(
              child: TextFormField(
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
          expands: false,
          decoration: const InputDecoration(
              labelText: MonchTexts.phoneNumber,
              prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(
          height: MonchSizes.spaceBwInputFields,
        ),
    
        // Password
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            labelText: MonchTexts.password,
            prefixIcon: Icon(Iconsax.password_check),
            suffixIcon: Icon(Iconsax.eye_slash),
          ),
        ),
        const SizedBox(
          height: MonchSizes.spaceBwSections,
        ),
    
        // Terms and conditions checkbox
        const MonchTermsAndConditionsCheckbox(),

        const SizedBox(height: MonchSizes.spaceBwSections,),
    
        // Signup button
        SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text(MonchTexts.createAccount),),),
      ],
    ));
  }
}

