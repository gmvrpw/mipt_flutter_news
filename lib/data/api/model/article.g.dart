// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiArticleSourceImpl _$$ApiArticleSourceImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiArticleSourceImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$ApiArticleSourceImplToJson(
        _$ApiArticleSourceImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$ApiArticleImpl _$$ApiArticleImplFromJson(Map<String, dynamic> json) =>
    _$ApiArticleImpl(
      title: json['title'] as String,
      source: ApiArticleSource.fromJson(json['source'] as Map<String, dynamic>),
      url: json['url'] as String,
      description: json['description'] as String,
      publishedAt: json['publishedAt'] as String?,
      urlToImage: json['urlToImage'] as String?,
    );

Map<String, dynamic> _$$ApiArticleImplToJson(_$ApiArticleImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'source': instance.source,
      'url': instance.url,
      'description': instance.description,
      'publishedAt': instance.publishedAt,
      'urlToImage': instance.urlToImage,
    };
