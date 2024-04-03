import 'package:newsapp_bionic/features/news/domain/entity/news_entity.dart';

import '../repository/news_repository.dart';

class GetDataListNewsUseCase {
  final NewsRepository _newsRepository;

  GetDataListNewsUseCase(this._newsRepository);

  Future<List<NewsEntity>> getDataListNewsEntity() async {
    try {
      List<NewsEntity> listNewsEntity = await _newsRepository.getDataListNews();
      return listNewsEntity;
    } catch (e) {
      throw Exception(e);
    }
  }
}
