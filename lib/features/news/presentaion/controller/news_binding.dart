import 'package:get/get.dart';
import 'package:newsapp_bionic/features/news/domain/usecase/get_data_list_news.dart';
import 'package:newsapp_bionic/features/news/presentaion/controller/news_controller.dart';

import '../../../userauth/presentaion/controller/login_controller.dart';
import '../../data/repository/userauth_repository_impl.dart';

class NewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(GetDataListNewsUseCase(Get.find<NewsRepositoryImpl>()));
    Get.put(NewsController(Get.find<GetDataListNewsUseCase>()));
    Get.find<LoginController>();
  }
}
