import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:mipt_flutter_news/data/api/model/article.dart';
import 'package:http/http.dart' as http;

@lazySingleton
class NewsApiService {
  static const _baseUrl = 'https://newsapi.org/v2';

  Future<List<ApiArticle>> getNews() async {
    final response = await http.get(Uri.parse(
        "$_baseUrl/everything?q=apple&pageSize=25&from=2024-03-09&to=2024-03-09&sortBy=popularity&apiKey=3645ddd17eec4e1e8fd720df89e21a5f"));

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
