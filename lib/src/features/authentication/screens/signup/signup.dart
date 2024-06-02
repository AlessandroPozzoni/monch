import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:monch/src/common/widgets/styles/login_signup/form_divider.dart';
import 'package:monch/src/common/widgets/styles/login_signup/social_buttons.dart';
import 'package:monch/src/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:monch/src/utils/constants/colors.dart';
import 'package:monch/src/utils/constants/sizes.dart';
import 'package:monch/src/utils/constants/texts_strings.dart';
import 'package:monch/src/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MonchSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                MonchTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: MonchSizes.spaceBwSections,
              ),

              // Form
              const MonchSignupForm(),
              const SizedBox(height: MonchSizes.spaceBwSections,),

              // Divider
              const MonchFormDivider(dividerText: MonchTexts.orSignUpWith),
              const SizedBox(height: MonchSizes.spaceBwSections,),

              // Social buttons
              const MonchSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

