import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'article.freezed.dart';

@freezed
class Article with _$Article {
  factory Article({
    required int id,
    required String sourceName,
    required String sourceUrl,
    required String title,
    required String description,
    String? publishedAt,
    String? urlToImage,
  }) = _Article;
}
