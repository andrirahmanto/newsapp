import 'package:newsapp_bionic/features/userauth/domain/entity/userauth_entity.dart';

import '../repository/userauth_repository.dart';

class GetDataUserAuthUseCase {
  final UserAuthRepository _userRepository;

  GetDataUserAuthUseCase(this._userRepository);

  Future<UserAuthEntity> getDataUserAuth() async {
    try {
      UserAuthEntity userAuthEntity = await _userRepository.getDataUserAuth();
      return userAuthEntity;
      // Handle successful sign-in
    } catch (e) {
      throw Exception(e);
    }
  }
}
