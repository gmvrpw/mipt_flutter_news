// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleSourceModelImpl _$$ArticleSourceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ArticleSourceModelImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$ArticleSourceModelImplToJson(
        _$ArticleSourceModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$ArticleModelImpl _$$ArticleModelImplFromJson(Map<String, dynamic> json) =>
    _$ArticleModelImpl(
      title: json['title'] as String,
      source:
          ArticleSourceModel.fromJson(json['source'] as Map<String, dynamic>),
      url: json['url'] as String,
      description: json['description'] as String,
      publishedAt: json['publishedAt'] as String?,
      urlToImage: json['urlToImage'] as String?,
    );

Map<String, dynamic> _$$ArticleModelImplToJson(_$ArticleModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'source': instance.source,
      'url': instance.url,
      'description': instance.description,
      'publishedAt': instance.publishedAt,
      'urlToImage': instance.urlToImage,
    };
