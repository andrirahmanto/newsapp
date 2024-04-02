// import 'package:firebase_auth/firebase_auth.dart';

import 'package:firebase_auth/firebase_auth.dart';

abstract class UserAuthRepository {
  Future<UserCredential> signInWithGoogle();
}
