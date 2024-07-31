import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monch/src/common/widgets/styles/loaders/loaders.dart';
import 'package:monch/src/data/repositories/authentication/authentication_repository.dart';
import 'package:monch/src/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:monch/src/utils/constants/image_strings.dart';
import 'package:monch/src/utils/popups/full_screen_loader.dart';

class ForgotPasswordController extends GetxController {
  static ForgotPasswordController get instance => Get.find();

  // Variables
  final email = TextEditingController();
  GlobalKey<FormState> forgotPasswordFormKey = GlobalKey<FormState>();

  // Send password reset email
  sendPasswordResetEmail() async {
    try {
      MonchFullScreenLoader.openLoadingDialog('Processing your request...', MonchImages.mixingAnimation);

      // Check internet connection
      /*
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected) {
        MonchFullScreenLoader.stopLoading();
        return;
      }
      */

      // Form validation
      if (!forgotPasswordFormKey.currentState!.validate()) {
        MonchFullScreenLoader.stopLoading();
        return;
      }

      await AuthenticationRepository.instance.sendPasswordResetEmail(email.text.trim());

      MonchFullScreenLoader.stopLoading();

      MonchLoaders.successSnackBar(title: 'Email sent!', message: 'The link to reset your password was sent. Check your inbox!'.tr);

      Get.to(() => ResetPassword(email: email.text.trim()));

    } catch(e) {
      MonchFullScreenLoader.stopLoading();
      MonchLoaders.errorSnackBar(title: 'Oh snap!', message: 'We were not able to send the reset email to your inbox.'.tr);
    }
  }

  resendPasswordResetEmail(String email) async {
    try {
      MonchFullScreenLoader.openLoadingDialog('Processing your request...', MonchImages.mixingAnimation);

      // Check internet connection
      /*
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected) {
        MonchFullScreenLoader.stopLoading();
        return;
      }
      */

      await AuthenticationRepository.instance.sendPasswordResetEmail(email);

      MonchFullScreenLoader.stopLoading();

      MonchLoaders.successSnackBar(title: 'Email sent!', message: 'The link to reset your password was sent. Check your inbox!'.tr);

    } catch(e) {
      MonchFullScreenLoader.stopLoading();
      MonchLoaders.errorSnackBar(title: 'Oh snap!', message: 'We were not able to resend the reset email to your inbox.'.tr);
    }
  }
}