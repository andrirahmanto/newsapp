import 'package:newsapp_bionic/features/news/data/datasource/userauth_remote_datasource.dart';
import 'package:newsapp_bionic/features/news/data/model/news_model.dart';
import 'package:newsapp_bionic/features/news/domain/entity/news_entity.dart';
import 'package:newsapp_bionic/features/news/domain/repository/news_repository.dart';

class NewsRepositoryImpl extends NewsRepository {
  final NewsRemoteDataSource _newsRemoteDataSource = NewsRemoteDataSource();

  @override
  Future<List<NewsEntity>> getDataListNews() async {
    try {
      List<NewsModel> newsEntity =
          await _newsRemoteDataSource.getListNewsModel();
      List<NewsEntity> newsEntityList =
          newsEntity.map((news) => news.toEntity()).toList();
      return newsEntityList;
    } catch (e) {
      throw Exception('Failed to sign in with google sign in: $e');
    }
  }
}
