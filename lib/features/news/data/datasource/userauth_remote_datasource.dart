import 'dart:convert';

import '../../../../app/urls.dart';
import '../model/news_model.dart';
import 'package:http/http.dart' as http;

class NewsRemoteDataSource {
  Future<List<NewsModel>> getListNewsModel() async {
    final response = await http.get(Uri.parse(
        NewsUrls.everything(q: 'korupsi', sortBy: 'popularity', pageSize: 10)));
    print(response.body);
    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      return NewsModel.fromJsonList(responseBody['articles']);
    } else {
      // Handle the error case
      throw Exception('Failed fetch data assessments');
    }
  }
}
