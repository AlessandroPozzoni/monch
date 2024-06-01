import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:monch/src/common/widgets/styles/login_signup/form_divider.dart';
import 'package:monch/src/common/widgets/styles/spacing_styles.dart';
import 'package:monch/src/features/authentication/screens/login/widgets/login_form.dart';
import 'package:monch/src/features/authentication/screens/login/widgets/login_header.dart';
import 'package:monch/src/utils/constants/colors.dart';
import 'package:monch/src/utils/constants/image_strings.dart';
import 'package:monch/src/utils/constants/sizes.dart';
import 'package:monch/src/utils/constants/texts_strings.dart';
import 'package:monch/src/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MonchHelperFunctions.isDarkMode(context);
    // TODO: implement build
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MonchSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, title and subtitle
              MonchLoginHeader(),
              // Form
              MonchLoginForm(),
              
              // Divider
              MonchFormDivider(dividerText: MonchTexts.orSignInWith),

              const SizedBox(height: MonchSizes.spaceBwSections,)

              // Footer
              // TODO sign in with Google UI






            ],
          ),
        ),
      ),
    );
  }
}

