import 'package:get/get.dart';
import 'package:newsapp_bionic/features/news/data/repository/userauth_repository_impl.dart';

import '../features/userauth/data/repository/userauth_repository_impl.dart';

class DependencyCreator {
  static init() {
    Get.put(UserAuthRepositoryImpl());
    Get.put(NewsRepositoryImpl());
  }
}
