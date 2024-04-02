// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';

import '../../domain/repository/userauth_repository.dart';
import '../datasource/userauth_remote_datasource.dart';

class UserAuthRepositoryImpl extends UserAuthRepository {
  final UserAuthRemoteDataSource userAuthRemoteDataSource =
      UserAuthRemoteDataSource();
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // final GoogleSignIn googleSignIn = GoogleSignIn();

  @override
  Future<void> signInWithGoogle() async {
    // try {
    //   final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

    //   // Obtain the auth details from the request
    //   final GoogleSignInAuthentication googleAuth =
    //       await googleUser!.authentication;

    //   // Create a new credential
    //   final credential = GoogleAuthProvider.credential(
    //     accessToken: googleAuth.accessToken!,
    //     idToken: googleAuth.idToken!,
    //   );

    //   // Once signed in, return the UserCredential
    //   return await _auth.signInWithCredential(credential);
    // } catch (e) {
    //   throw Exception('Failed to sign in with google sign in: $e');
    // }
  }
}
