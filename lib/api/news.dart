import 'dart:convert';

import 'package:mipt_flutter_news/models/article.dart';
import 'package:http/http.dart' as http;

Future<List<ArticleModel>> fetchNews() async {
  final response = await http.get(Uri.parse(
      "https://newsapi.org/v2/everything?q=apple&pageSize=25&from=2024-03-09&to=2024-03-09&sortBy=popularity&apiKey=3645ddd17eec4e1e8fd720df89e21a5f"));

  if (response.statusCode == 200) {
    return switch (jsonDecode(response.body) as Map<String, dynamic>) {
      {
        'articles': List<dynamic> articles,
      } =>
        articles.map((article) => ArticleModel.fromJson(article)).toList(),
      _ => throw const FormatException("Unexpected json format for news api")
    };
  }
  throw Exception("Failed to load news");
}
