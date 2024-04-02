import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:local_auth/local_auth.dart';

import '../../domain/usecase/google_sign_in_use_case.dart';

class LoginController extends GetxController {
  LoginController(this._googleSignInUseCase);
  final GoogleSignInlUseCase _googleSignInUseCase;
  final LocalAuthentication auth = LocalAuthentication();

  final TextEditingController emailController = TextEditingController(text: "");
  final TextEditingController passwordController =
      TextEditingController(text: "");

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> loginWithGoogleSignIn() async {
    try {
      await _googleSignInUseCase.signInWithGoogleSignIn();
      // Handle successful sign-in
      Get.toNamed('/news');
    } catch (e) {
      final snackBar = SnackBar(
        content: Text('Failed to sign in with google sign in: $e'),
        backgroundColor: Colors.red,
      );
      // Get the ScaffoldMessenger and show the SnackBar
      ScaffoldMessenger.of(Get.context!).showSnackBar(snackBar);
      throw Exception('Failed to sign in with google sign in: $e');
    }
  }
}
