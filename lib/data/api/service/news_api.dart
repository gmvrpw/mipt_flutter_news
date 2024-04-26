import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:mipt_flutter_news/data/api/model/article.dart';
import 'package:http/http.dart' as http;

@lazySingleton
class NewsApiService {
  static const host = 'newsapi.org';
  static const basePath = '/v2';
  static const apiKey = "3645ddd17eec4e1e8fd720df89e21a5f";

  Future<List<ApiArticle>> getNews({String? query, String? language}) async {
    final uri = Uri.https(
        host,
        "$basePath/everything",
        Map.from({
          "q": query,
          "language": language,
          "sources": "techcrunch",
          "sortBy": "relevancy",
          "pageSize": "25",
          "apiKey": apiKey
        })
          ..removeWhere((key, value) => value == null));
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      return switch (jsonDecode(response.body) as Map<String, dynamic>) {
        {
          'articles': List<dynamic> articles,
        } =>
          articles.map((article) => ApiArticle.fromJson(article)).toList(),
        _ => throw const FormatException(
            "Unexpected json format for newsapi.org service")
      };
    }
    throw Exception("Failed to load news");
  }
}
