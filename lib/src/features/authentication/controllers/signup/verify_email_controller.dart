import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'dart:async';
import 'package:monch/src/common/widgets/styles/loaders/loaders.dart';
import 'package:monch/src/common/widgets/success_screen/success_screen.dart';
import 'package:monch/src/data/repositories/authentication/authentication_repository.dart';
import 'package:monch/src/utils/constants/image_strings.dart';
import 'package:monch/src/utils/constants/texts_strings.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  // Send email whenever verify screen appears and set timer for auto direct
  @override
  void onInit() {
    // sendEmailVerification(); // I don't like this one
    setTimerAutodirect();
    super.onInit();
  }

  // Send email verification link
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

  // Timer to automatically redirect on email verification
  setTimerAutodirect() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      await FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user?.emailVerified ?? false) {
        timer.cancel();
        Get.off(
          () => SuccessScreen(
            image: MonchImages.flutterLogo,
            title: MonchTexts.accountCreatedTitle,
            subtitle: MonchTexts.accountCreatedSubtitle,
            onPressed: AuthenticationRepository.instance.screenRedirect(),
          ),
        );
      }
    });
  }

  // Manually check if email is verified
  checkEmailVerification() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null && currentUser.emailVerified) {
      Get.off(() => SuccessScreen(
            image: MonchImages.flutterLogo,
            title: MonchTexts.accountCreatedTitle,
            subtitle: MonchTexts.accountCreatedSubtitle,
            onPressed: () => AuthenticationRepository.instance.screenRedirect(),
          ));
    }
  }
}
