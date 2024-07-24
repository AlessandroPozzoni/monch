import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monch/src/common/widgets/styles/loaders/loaders.dart';
import 'package:monch/src/data/repositories/authentication/authentication_repository.dart';
import 'package:monch/src/data/repositories/user/user_repository.dart';
import 'package:monch/src/features/authentication/screens/signup/verify_email.dart';
import 'package:monch/src/features/personalization/models/user_model.dart';
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
      MonchFullScreenLoader.openLoadingDialog('Baking a new account for you...', MonchImages.mixingAnimation);

      // Check internet connection
      // final isConnected = await NetworkManager.instance.isConnected();
      // if(!isConnected) {
      //   // Remove loader
      //   MonchFullScreenLoader.stopLoading();

      //   return;
      // }

      // Form validation
      if(!signupFormKey.currentState!.validate()) {
        // Remove loader
        MonchFullScreenLoader.stopLoading();

        return;
      }

      // Privacy policy check
      if (!privacyPolicy.value) {
        MonchLoaders.warningSnackBar(title: 'First, accept the privacy policy', message: 'In order to create an account you need to read an accept the privacy policy and terms of use.');
        
        // Remove loader
        MonchFullScreenLoader.stopLoading();

        return;
      }

      // Register user in the Firebase Authentication and save user data in Firebase
      final userCredential = await AuthenticationRepository.instance.registerWithEmailAndPassword(email.text.trim(), password.text.trim());

      // Save authenticated user data in Firebase Firestore
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        username: username.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      // Remove loader
      MonchFullScreenLoader.stopLoading();


      // Show success message
      MonchLoaders.successSnackBar(title: 'Account created!', message: 'Your account has been successfully created! Verify your e-mail to continue.');

      sendEmailVerification();
      Get.to(() => VerifyEmailScreen(email: email.text.trim()));

      // TODO Move to verify email screen

    } catch(e) {
      // Remove loader
      MonchFullScreenLoader.stopLoading();

      // Show some generic error to the user
      MonchLoaders.errorSnackBar(title: 'Oh snap!', message: e.toString());
    } finally {
    }
  }

  sendEmailVerification() async {
    try {
      await AuthenticationRepository.instance.sendEmailVerification();
      MonchLoaders.successSnackBar(
          title: 'Email sent',
          message: 'Please check your inbox and verify your email address.');
    } catch (e) {
      MonchLoaders.errorSnackBar(title: 'Oh snap!', message: e.toString());
    }
  }


}