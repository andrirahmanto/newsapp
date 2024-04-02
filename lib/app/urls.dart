import 'constant.dart';

class NewsUrls {
  static String everything(
          {required String q, required String sortBy, required int pageSize}) =>
      '$baseUrl/everything?apiKey=$apiKey&q=$q&sortBy=$sortBy&pageSize=$pageSize';
}
