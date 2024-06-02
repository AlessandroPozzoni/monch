import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:monch/src/features/authentication/screens/login/login.dart';
import 'package:monch/src/features/authentication/screens/onboarding/onboarding.dart';

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
    // Local storage
    deviceStorage.writeIfNull('firstLoad', true);
    deviceStorage.read('firstLoad') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(const OnBoardingScreen());
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
}
