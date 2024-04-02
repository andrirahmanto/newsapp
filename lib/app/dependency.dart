import 'package:get/get.dart';

import '../features/userauth/data/repository/userauth_repository_impl.dart';

class DependencyCreator {
  static init() {
    Get.put(UserAuthRepositoryImpl());
  }
}
