// import 'package:firebase_auth/firebase_auth.dart';

abstract class UserAuthRepository {
  Future<void> signInWithGoogle();
}
