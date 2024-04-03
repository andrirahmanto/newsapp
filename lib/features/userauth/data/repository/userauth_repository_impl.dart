// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:newsapp_bionic/features/userauth/data/model/userauth_model.dart';
import 'package:newsapp_bionic/features/userauth/domain/entity/userauth_entity.dart';

import '../../domain/repository/userauth_repository.dart';
import '../datasource/userauth_local_datasource.dart';

class UserAuthRepositoryImpl extends UserAuthRepository {
  final UserAuthLocalDataSource userAuthLocalDataSource =
      UserAuthLocalDataSource();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['profile', 'email']);

  @override
  Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final UserCredential userCredential =
          await _auth.signInWithCredential(credential);

      final box = GetStorage();
      await box.write('displayName', userCredential.user?.displayName);
      await box.write('email', userCredential.user?.email);
      await box.write('isLogin', true);

      return;
    } catch (e) {
      throw Exception('Failed to sign in with google sign in: $e');
    }
  }

  @override
  Future<UserAuthEntity> getDataUserAuth() async {
    try {
      final box = GetStorage();
      final String displayName = box.read('displayName');
      final String email = box.read('email');
      return UserAuthModel(displayName: displayName, email: email).toEntity();
    } catch (e) {
      throw Exception(e);
    }
  }
}
