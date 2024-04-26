// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiFavoriteArticleImpl _$$ApiFavoriteArticleImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiFavoriteArticleImpl(
      id: json['id'] as int,
      sourceName: json['sourceName'] as String,
      sourceUrl: json['sourceUrl'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      publishedAt: json['publishedAt'] as String?,
      urlToImage: json['urlToImage'] as String?,
    );

Map<String, dynamic> _$$ApiFavoriteArticleImplToJson(
        _$ApiFavoriteArticleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sourceName': instance.sourceName,
      'sourceUrl': instance.sourceUrl,
      'title': instance.title,
      'description': instance.description,
      'publishedAt': instance.publishedAt,
      'urlToImage': instance.urlToImage,
    };
