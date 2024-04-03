// import 'package:firebase_auth/firebase_auth.dart';

import '../entity/news_entity.dart';

abstract class NewsRepository {
  Future<List<NewsEntity>> getDataListNews();
}
