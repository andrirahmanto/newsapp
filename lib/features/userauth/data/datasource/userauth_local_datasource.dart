import 'package:get_storage/get_storage.dart';

import '../model/userauth_model.dart';

class UserAuthLocalDataSource {
  Future<UserAuthModel> getUserDetail() async {
    final box = GetStorage();
    final displayName = box.read('displayName');
    final email = box.read('email');
    return UserAuthModel.fromStorage(displayName: displayName, email: email);
  }
}
