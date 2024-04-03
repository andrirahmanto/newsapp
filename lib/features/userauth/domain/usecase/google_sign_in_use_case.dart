import 'package:firebase_auth/firebase_auth.dart';

import '../repository/userauth_repository.dart';

class GoogleSignInlUseCase {
  final UserAuthRepository _userRepository;

  GoogleSignInlUseCase(this._userRepository);

  Future<void> signInWithGoogleSignIn() async {
    try {
      await _userRepository.signInWithGoogle();
      return;
      // Handle successful sign-in
    } catch (e) {
      throw Exception(e);
    }
  }
}
