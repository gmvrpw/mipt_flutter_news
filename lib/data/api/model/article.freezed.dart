// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiArticleSource _$ApiArticleSourceFromJson(Map<String, dynamic> json) {
  return _ApiArticleSource.fromJson(json);
}

/// @nodoc
mixin _$ApiArticleSource {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiArticleSourceCopyWith<ApiArticleSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiArticleSourceCopyWith<$Res> {
  factory $ApiArticleSourceCopyWith(
          ApiArticleSource value, $Res Function(ApiArticleSource) then) =
      _$ApiArticleSourceCopyWithImpl<$Res, ApiArticleSource>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$ApiArticleSourceCopyWithImpl<$Res, $Val extends ApiArticleSource>
    implements $ApiArticleSourceCopyWith<$Res> {
  _$ApiArticleSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiArticleSourceImplCopyWith<$Res>
    implements $ApiArticleSourceCopyWith<$Res> {
  factory _$$ApiArticleSourceImplCopyWith(_$ApiArticleSourceImpl value,
          $Res Function(_$ApiArticleSourceImpl) then) =
      __$$ApiArticleSourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$ApiArticleSourceImplCopyWithImpl<$Res>
    extends _$ApiArticleSourceCopyWithImpl<$Res, _$ApiArticleSourceImpl>
    implements _$$ApiArticleSourceImplCopyWith<$Res> {
  __$$ApiArticleSourceImplCopyWithImpl(_$ApiArticleSourceImpl _value,
      $Res Function(_$ApiArticleSourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$ApiArticleSourceImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiArticleSourceImpl
    with DiagnosticableTreeMixin
    implements _ApiArticleSource {
  _$ApiArticleSourceImpl({required this.name});

  factory _$ApiArticleSourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiArticleSourceImplFromJson(json);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiArticleSource(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiArticleSource'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiArticleSourceImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiArticleSourceImplCopyWith<_$ApiArticleSourceImpl> get copyWith =>
      __$$ApiArticleSourceImplCopyWithImpl<_$ApiArticleSourceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiArticleSourceImplToJson(
      this,
    );
  }
}

abstract class _ApiArticleSource implements ApiArticleSource {
  factory _ApiArticleSource({required final String name}) =
      _$ApiArticleSourceImpl;

  factory _ApiArticleSource.fromJson(Map<String, dynamic> json) =
      _$ApiArticleSourceImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ApiArticleSourceImplCopyWith<_$ApiArticleSourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiArticle _$ApiArticleFromJson(Map<String, dynamic> json) {
  return _ApiArticle.fromJson(json);
}

/// @nodoc
mixin _$ApiArticle {
  String get title => throw _privateConstructorUsedError;
  ApiArticleSource get source => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get publishedAt => throw _privateConstructorUsedError;
  String? get urlToImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiArticleCopyWith<ApiArticle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiArticleCopyWith<$Res> {
  factory $ApiArticleCopyWith(
          ApiArticle value, $Res Function(ApiArticle) then) =
      _$ApiArticleCopyWithImpl<$Res, ApiArticle>;
  @useResult
  $Res call(
      {String title,
      ApiArticleSource source,
      String url,
      String? description,
      String? publishedAt,
      String? urlToImage});

  $ApiArticleSourceCopyWith<$Res> get source;
}

/// @nodoc
class _$ApiArticleCopyWithImpl<$Res, $Val extends ApiArticle>
    implements $ApiArticleCopyWith<$Res> {
  _$ApiArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? source = null,
    Object? url = null,
    Object? description = freezed,
    Object? publishedAt = freezed,
    Object? urlToImage = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ApiArticleSource,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      urlToImage: freezed == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiArticleSourceCopyWith<$Res> get source {
    return $ApiArticleSourceCopyWith<$Res>(_value.source, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiArticleImplCopyWith<$Res>
    implements $ApiArticleCopyWith<$Res> {
  factory _$$ApiArticleImplCopyWith(
          _$ApiArticleImpl value, $Res Function(_$ApiArticleImpl) then) =
      __$$ApiArticleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      ApiArticleSource source,
      String url,
      String? description,
      String? publishedAt,
      String? urlToImage});

  @override
  $ApiArticleSourceCopyWith<$Res> get source;
}

/// @nodoc
class __$$ApiArticleImplCopyWithImpl<$Res>
    extends _$ApiArticleCopyWithImpl<$Res, _$ApiArticleImpl>
    implements _$$ApiArticleImplCopyWith<$Res> {
  __$$ApiArticleImplCopyWithImpl(
      _$ApiArticleImpl _value, $Res Function(_$ApiArticleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? source = null,
    Object? url = null,
    Object? description = freezed,
    Object? publishedAt = freezed,
    Object? urlToImage = freezed,
  }) {
    return _then(_$ApiArticleImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ApiArticleSource,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      urlToImage: freezed == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiArticleImpl with DiagnosticableTreeMixin implements _ApiArticle {
  _$ApiArticleImpl(
      {required this.title,
      required this.source,
      required this.url,
      this.description,
      this.publishedAt,
      this.urlToImage});

  factory _$ApiArticleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiArticleImplFromJson(json);

  @override
  final String title;
  @override
  final ApiArticleSource source;
  @override
  final String url;
  @override
  final String? description;
  @override
  final String? publishedAt;
  @override
  final String? urlToImage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiArticle(title: $title, source: $source, url: $url, description: $description, publishedAt: $publishedAt, urlToImage: $urlToImage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiArticle'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('source', source))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('publishedAt', publishedAt))
      ..add(DiagnosticsProperty('urlToImage', urlToImage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiArticleImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.urlToImage, urlToImage) ||
                other.urlToImage == urlToImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, source, url, description, publishedAt, urlToImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiArticleImplCopyWith<_$ApiArticleImpl> get copyWith =>
      __$$ApiArticleImplCopyWithImpl<_$ApiArticleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiArticleImplToJson(
      this,
    );
  }
}

abstract class _ApiArticle implements ApiArticle {
  factory _ApiArticle(
      {required final String title,
      required final ApiArticleSource source,
      required final String url,
      final String? description,
      final String? publishedAt,
      final String? urlToImage}) = _$ApiArticleImpl;

  factory _ApiArticle.fromJson(Map<String, dynamic> json) =
      _$ApiArticleImpl.fromJson;

  @override
  String get title;
  @override
  ApiArticleSource get source;
  @override
  String get url;
  @override
  String? get description;
  @override
  String? get publishedAt;
  @override
  String? get urlToImage;
  @override
  @JsonKey(ignore: true)
  _$$ApiArticleImplCopyWith<_$ApiArticleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
