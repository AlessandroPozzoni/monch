import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:monch/src/common/widgets/styles/loaders/loaders.dart';
import 'package:monch/src/data/repositories/authentication/authentication_repository.dart';
import 'package:monch/src/utils/constants/image_strings.dart';
import 'package:monch/src/utils/popups/full_screen_loader.dart';

class LoginController extends GetxController {
  
  // Variables
  final rememberMe = false.obs; // observable Getx feature to redraw screen on the design with state management (redraws only the specific widget)
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();


  @override
  void onInit() {
    email.text = localStorage.read('REMEMBER_ME_EMAIL') ?? '';
    password.text = localStorage.read('REMEMBER_ME_PASSWORD') ?? '';
    super.onInit();
  }
  
  Future<void> emailAndPasswordSignIn() async {
    try {
      // Start loading
      MonchFullScreenLoader.openLoadingDialog('Logging in...', MonchImages.mixingAnimation);

      // Check internet connection
      /*
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected) {
        MonchFullScreenLoader.stopLoading();
        return;
      }
      */

      // Form validation
      if (!loginFormKey.currentState!.validate()) {
        MonchFullScreenLoader.stopLoading();
        return;
      }

      // Save data if rememberMe is selected
      if(rememberMe.value) {
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }

      // Log in user using email and password authentication
      final userCredentials = await AuthenticationRepository.instance.loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      // Remove loader
      MonchFullScreenLoader.stopLoading();

      // Redirect
      AuthenticationRepository.instance.screenRedirect();

    } catch (e) {
      MonchFullScreenLoader.stopLoading();
      MonchLoaders.errorSnackBar(title: 'Oh snap!', message: e.toString());
    }
  }



}