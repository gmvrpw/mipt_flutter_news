import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class ApiArticleSource with _$ApiArticleSource {
  factory ApiArticleSource({
    required String name,
  }) = _ApiArticleSource;
  factory ApiArticleSource.fromJson(Map<String, Object?> json) =>
      _$ApiArticleSourceFromJson(json);
}

@freezed
class ApiArticle with _$ApiArticle {
  factory ApiArticle({
    required String title,
    required ApiArticleSource source,
    required String url,
    String? description,
    String? publishedAt,
    String? urlToImage,
  }) = _ApiArticle;
  factory ApiArticle.fromJson(Map<String, Object?> json) =>
      _$ApiArticleFromJson(json);
}
