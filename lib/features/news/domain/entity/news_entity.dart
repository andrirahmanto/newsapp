import 'package:equatable/equatable.dart';

class NewsEntity extends Equatable {
  final String title;
  final String author;
  final String publishedAt;
  final String urlToImage;
  final String description;

  const NewsEntity({
    required this.title,
    required this.author,
    required this.publishedAt,
    required this.urlToImage,
    required this.description,
  });

  @override
  List<Object?> get props => [
        title,
        author,
        publishedAt,
        urlToImage,
        description,
      ];
}
