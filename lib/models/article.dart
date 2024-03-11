import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class ArticleSourceModel with _$ArticleSourceModel {
  factory ArticleSourceModel({
    required String name,
  }) = _ArticleSourceModel;
  factory ArticleSourceModel.fromJson(Map<String, Object?> json) =>
      _$ArticleSourceModelFromJson(json);
}

@freezed
class ArticleModel with _$ArticleModel {
  factory ArticleModel(
      {required String title,
      required ArticleSourceModel source,
      required String url,
      required String description,
      String? publishedAt,
      String? urlToImage}) = _ArticleModel;
  factory ArticleModel.fromJson(Map<String, Object?> json) =>
      _$ArticleModelFromJson(json);
}
