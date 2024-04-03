// import 'package:firebase_auth/firebase_auth.dart';

import 'package:newsapp_bionic/features/userauth/domain/entity/userauth_entity.dart';

abstract class UserAuthRepository {
  Future<void> signInWithGoogle();
  Future<UserAuthEntity> getDataUserAuth();
}
