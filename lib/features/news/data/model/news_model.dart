import '../../domain/entity/news_entity.dart';
import 'package:intl/intl.dart';

class NewsModel {
  final String title;
  final String author;
  final DateTime publishAt;
  final String urlToImage;
  final String description;

  const NewsModel({
    required this.title,
    required this.author,
    required this.publishAt,
    required this.urlToImage,
    required this.description,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      title: json['title'],
      author: json['author'],
      publishAt: DateTime.parse(json['publishedAt']),
      urlToImage: json['urlToImage'],
      description: json['description'],
    );
  }

  static List<NewsModel> fromJsonList(List<dynamic> jsonList) {
    List<NewsModel> newsList = [];
    for (var json in jsonList) {
      newsList.add(NewsModel.fromJson(json));
    }
    return newsList;
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'author': author,
      'publishedAt': publishAt.toIso8601String(),
      'urlToImage': urlToImage,
      'description': description,
    };
  }

  NewsEntity toEntity() {
    return NewsEntity(
      title: title,
      author: author,
      publishedAt: DateFormat('EEEE, d MMMM yyyy').format(publishAt),
      urlToImage: urlToImage,
      description: description,
    );
  }
}
