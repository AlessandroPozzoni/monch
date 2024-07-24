import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:monch/src/features/authentication/screens/login/login.dart';
import 'package:monch/src/features/authentication/screens/onboarding/onboarding.dart';
import 'package:monch/src/features/authentication/screens/signup/verify_email.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  // Called from main.dart on app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  // Function to show relevant screen
  screenRedirect() async {
    final user = _auth.currentUser;
    if (user != null) {
      if (user.emailVerified) {
        // Get.offAll(() => const Home());
      } else {
        Get.offAll(() => VerifyEmailScreen(email: _auth.currentUser?.email,));
      }
    } else {
      // Local storage
      deviceStorage.writeIfNull('firstLoad', true);
      deviceStorage.read('firstLoad') != true
          ? Get.offAll(() => const LoginScreen())
          : Get.offAll(const OnBoardingScreen());
    }
  }



  // Sign in 

  // Register
  Future<UserCredential> registerWithEmailAndPassword(String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      // TODO exeption handling
      rethrow;
    }
  }

  // Email verification
  Future<void> sendEmailVerification() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      // TODO exeption handling
      rethrow;
    }
  }

  // Reauthenticate

  // Forgot password

  // Logout user
  Future<void> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      Get.offAll(() => const LoginScreen());
    } on FirebaseAuthException catch(e) {
      rethrow;
    }
  }

  // Delete user

  /* ---------------------------- GOOGLE SIGN IN ---------------------------- */ 
}
