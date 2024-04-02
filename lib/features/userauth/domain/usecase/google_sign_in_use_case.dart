// import 'package:firebase_auth/firebase_auth.dart';

import '../repository/userauth_repository.dart';

class GoogleSignInlUseCase {
  final UserAuthRepository _userRepository;

  GoogleSignInlUseCase(this._userRepository);

  Future<void> signInWithGoogleSignIn() async {
    try {
      // UserCredential credential = await _userRepository.signInWithGoogle();
      print('berhasil login');
      // print(credential.user!.displayName);
      // Handle successful sign-in
    } catch (e) {
      throw Exception('Failed to sign in with google sign in: $e');
    }
  }
}
