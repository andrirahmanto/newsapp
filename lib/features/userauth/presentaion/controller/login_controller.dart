import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp_bionic/features/userauth/domain/entity/userauth_entity.dart';
import 'package:newsapp_bionic/features/userauth/domain/usecase/get_data_userauth.dart';

import '../../domain/usecase/google_sign_in_use_case.dart';

class LoginController extends GetxController {
  LoginController(this._googleSignInUseCase, this._getDataUserAuthUseCase);
  final GoogleSignInlUseCase _googleSignInUseCase;
  final GetDataUserAuthUseCase _getDataUserAuthUseCase;
  late Rx<UserAuthEntity> userAuthEntity;

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> loginWithGoogleSignIn() async {
    try {
      await _googleSignInUseCase.signInWithGoogleSignIn();
      userAuthEntity =
          Rx<UserAuthEntity>(await _getDataUserAuthUseCase.getDataUserAuth());
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
