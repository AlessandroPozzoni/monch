import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monch/src/common/widgets/styles/loaders/loaders.dart';
import 'package:monch/src/data/repositories/authentication/authentication_repository.dart';
import 'package:monch/src/utils/constants/image_strings.dart';
import 'package:monch/src/utils/popups/full_screen_loader.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  final hidePassword = true.obs;
  final privacyPolicy = false.obs;
  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  Future<void> signup() async {
    try {
      // Start loading
      MonchFullScreenLoader.openLoadingDialog('We are processing your information...', MonchImages.flutterLogo);

      // Check internet connection
      // final isConnected = await NetworkManager.instance.isConnected();

      // Form validation
      if(!signupFormKey.currentState!.validate()) {
        return;
      }

      // Privacy policy check
      if (!privacyPolicy.value) {
        MonchLoaders.warningSnackBar(title: 'First, accept the privacy policy', message: 'In order to create an account you need to read an accept the privacy policy and terms of use.');
        return;
      }

      // TODO egister user in the Firebase Authentication and save user data in Firebase
      // final user = await AuthenticationRepository.instance.registerWithEmailAndPassword(email.text.trim(), password.text.trim());

      // TODO Save authenticated user data in Firebase Firestore
      // final user = UserModel;

      // TODO Show success message

      // TODO Move to verify email screen

    } catch(e) {
      // Show some generic error to the user
      MonchLoaders.errorSnackBar(title: 'Oh snap!', message: e.toString());
    } finally {
      // Remove loader
      MonchFullScreenLoader.stopLoading();
    }
  }


}