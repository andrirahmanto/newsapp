// import 'package:firebase_auth/firebase_auth.dart';

import 'package:firebase_auth/firebase_auth.dart';

import '../repository/userauth_repository.dart';

class GoogleSignInlUseCase {
  final UserAuthRepository _userRepository;

  GoogleSignInlUseCase(this._userRepository);

  Future<UserCredential> signInWithGoogleSignIn() async {
    try {
      UserCredential credential = await _userRepository.signInWithGoogle();
      print(credential.user!.displayName);
      return credential;
      // Handle successful sign-in
    } catch (e) {
      throw Exception(e);
    }
  }
}
