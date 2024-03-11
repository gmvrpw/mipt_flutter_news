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

ArticleSourceModel _$ArticleSourceModelFromJson(Map<String, dynamic> json) {
  return _ArticleSourceModel.fromJson(json);
}

/// @nodoc
mixin _$ArticleSourceModel {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleSourceModelCopyWith<ArticleSourceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleSourceModelCopyWith<$Res> {
  factory $ArticleSourceModelCopyWith(
          ArticleSourceModel value, $Res Function(ArticleSourceModel) then) =
      _$ArticleSourceModelCopyWithImpl<$Res, ArticleSourceModel>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$ArticleSourceModelCopyWithImpl<$Res, $Val extends ArticleSourceModel>
    implements $ArticleSourceModelCopyWith<$Res> {
  _$ArticleSourceModelCopyWithImpl(this._value, this._then);

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
abstract class _$$ArticleSourceModelImplCopyWith<$Res>
    implements $ArticleSourceModelCopyWith<$Res> {
  factory _$$ArticleSourceModelImplCopyWith(_$ArticleSourceModelImpl value,
          $Res Function(_$ArticleSourceModelImpl) then) =
      __$$ArticleSourceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$ArticleSourceModelImplCopyWithImpl<$Res>
    extends _$ArticleSourceModelCopyWithImpl<$Res, _$ArticleSourceModelImpl>
    implements _$$ArticleSourceModelImplCopyWith<$Res> {
  __$$ArticleSourceModelImplCopyWithImpl(_$ArticleSourceModelImpl _value,
      $Res Function(_$ArticleSourceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$ArticleSourceModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleSourceModelImpl
    with DiagnosticableTreeMixin
    implements _ArticleSourceModel {
  _$ArticleSourceModelImpl({required this.name});

  factory _$ArticleSourceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleSourceModelImplFromJson(json);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArticleSourceModel(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArticleSourceModel'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleSourceModelImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleSourceModelImplCopyWith<_$ArticleSourceModelImpl> get copyWith =>
      __$$ArticleSourceModelImplCopyWithImpl<_$ArticleSourceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleSourceModelImplToJson(
      this,
    );
  }
}

abstract class _ArticleSourceModel implements ArticleSourceModel {
  factory _ArticleSourceModel({required final String name}) =
      _$ArticleSourceModelImpl;

  factory _ArticleSourceModel.fromJson(Map<String, dynamic> json) =
      _$ArticleSourceModelImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ArticleSourceModelImplCopyWith<_$ArticleSourceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArticleModel _$ArticleModelFromJson(Map<String, dynamic> json) {
  return _ArticleModel.fromJson(json);
}

/// @nodoc
mixin _$ArticleModel {
  String get title => throw _privateConstructorUsedError;
  ArticleSourceModel get source => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get publishedAt => throw _privateConstructorUsedError;
  String? get urlToImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleModelCopyWith<ArticleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleModelCopyWith<$Res> {
  factory $ArticleModelCopyWith(
          ArticleModel value, $Res Function(ArticleModel) then) =
      _$ArticleModelCopyWithImpl<$Res, ArticleModel>;
  @useResult
  $Res call(
      {String title,
      ArticleSourceModel source,
      String url,
      String description,
      String? publishedAt,
      String? urlToImage});

  $ArticleSourceModelCopyWith<$Res> get source;
}

/// @nodoc
class _$ArticleModelCopyWithImpl<$Res, $Val extends ArticleModel>
    implements $ArticleModelCopyWith<$Res> {
  _$ArticleModelCopyWithImpl(this._value, this._then);

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
    Object? description = null,
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
              as ArticleSourceModel,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
  $ArticleSourceModelCopyWith<$Res> get source {
    return $ArticleSourceModelCopyWith<$Res>(_value.source, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArticleModelImplCopyWith<$Res>
    implements $ArticleModelCopyWith<$Res> {
  factory _$$ArticleModelImplCopyWith(
          _$ArticleModelImpl value, $Res Function(_$ArticleModelImpl) then) =
      __$$ArticleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      ArticleSourceModel source,
      String url,
      String description,
      String? publishedAt,
      String? urlToImage});

  @override
  $ArticleSourceModelCopyWith<$Res> get source;
}

/// @nodoc
class __$$ArticleModelImplCopyWithImpl<$Res>
    extends _$ArticleModelCopyWithImpl<$Res, _$ArticleModelImpl>
    implements _$$ArticleModelImplCopyWith<$Res> {
  __$$ArticleModelImplCopyWithImpl(
      _$ArticleModelImpl _value, $Res Function(_$ArticleModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? source = null,
    Object? url = null,
    Object? description = null,
    Object? publishedAt = freezed,
    Object? urlToImage = freezed,
  }) {
    return _then(_$ArticleModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ArticleSourceModel,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$ArticleModelImpl with DiagnosticableTreeMixin implements _ArticleModel {
  _$ArticleModelImpl(
      {required this.title,
      required this.source,
      required this.url,
      required this.description,
      this.publishedAt,
      this.urlToImage});

  factory _$ArticleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleModelImplFromJson(json);

  @override
  final String title;
  @override
  final ArticleSourceModel source;
  @override
  final String url;
  @override
  final String description;
  @override
  final String? publishedAt;
  @override
  final String? urlToImage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArticleModel(title: $title, source: $source, url: $url, description: $description, publishedAt: $publishedAt, urlToImage: $urlToImage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArticleModel'))
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
            other is _$ArticleModelImpl &&
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
  _$$ArticleModelImplCopyWith<_$ArticleModelImpl> get copyWith =>
      __$$ArticleModelImplCopyWithImpl<_$ArticleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleModelImplToJson(
      this,
    );
  }
}

abstract class _ArticleModel implements ArticleModel {
  factory _ArticleModel(
      {required final String title,
      required final ArticleSourceModel source,
      required final String url,
      required final String description,
      final String? publishedAt,
      final String? urlToImage}) = _$ArticleModelImpl;

  factory _ArticleModel.fromJson(Map<String, dynamic> json) =
      _$ArticleModelImpl.fromJson;

  @override
  String get title;
  @override
  ArticleSourceModel get source;
  @override
  String get url;
  @override
  String get description;
  @override
  String? get publishedAt;
  @override
  String? get urlToImage;
  @override
  @JsonKey(ignore: true)
  _$$ArticleModelImplCopyWith<_$ArticleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
