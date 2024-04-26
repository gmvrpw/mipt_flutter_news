import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'favorite_article.freezed.dart';
part 'favorite_article.g.dart';

@freezed
class ApiFavoriteArticle with _$ApiFavoriteArticle {
  factory ApiFavoriteArticle({
    required int id,
    required String sourceName,
    required String sourceUrl,
    required String title,
    String? description,
    String? publishedAt,
    String? urlToImage,
  }) = _ApiFavoriteArticle;

  factory ApiFavoriteArticle.fromJson(Map<String, Object?> json) =>
      _$ApiFavoriteArticleFromJson(json);
}
