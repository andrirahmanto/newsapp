import 'package:get/get.dart';
import 'package:newsapp_bionic/features/userauth/domain/usecase/get_data_userauth.dart';

import '../../data/repository/userauth_repository_impl.dart';
import '../../domain/usecase/google_sign_in_use_case.dart';
import 'login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(GoogleSignInlUseCase(Get.find<UserAuthRepositoryImpl>()));
    Get.put(GetDataUserAuthUseCase(Get.find<UserAuthRepositoryImpl>()));
    Get.put(LoginController(
        Get.find<GoogleSignInlUseCase>(), Get.find<GetDataUserAuthUseCase>()));
  }
}
