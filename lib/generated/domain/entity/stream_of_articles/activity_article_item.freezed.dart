// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/entity/stream_of_articles/activity_article_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ActivityArticleItem {
  String get uri => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  bool get isDuplicate => throw _privateConstructorUsedError;
  DateTime get dateTimePublished => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActivityArticleItemCopyWith<ActivityArticleItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityArticleItemCopyWith<$Res> {
  factory $ActivityArticleItemCopyWith(
          ActivityArticleItem value, $Res Function(ActivityArticleItem) then) =
      _$ActivityArticleItemCopyWithImpl<$Res, ActivityArticleItem>;
  @useResult
  $Res call(
      {String uri,
      String language,
      bool isDuplicate,
      DateTime dateTimePublished,
      String url,
      String title,
      String body});
}

/// @nodoc
class _$ActivityArticleItemCopyWithImpl<$Res, $Val extends ActivityArticleItem>
    implements $ActivityArticleItemCopyWith<$Res> {
  _$ActivityArticleItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? language = null,
    Object? isDuplicate = null,
    Object? dateTimePublished = null,
    Object? url = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      isDuplicate: null == isDuplicate
          ? _value.isDuplicate
          : isDuplicate // ignore: cast_nullable_to_non_nullable
              as bool,
      dateTimePublished: null == dateTimePublished
          ? _value.dateTimePublished
          : dateTimePublished // ignore: cast_nullable_to_non_nullable
              as DateTime,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivityArticleItemImplCopyWith<$Res>
    implements $ActivityArticleItemCopyWith<$Res> {
  factory _$$ActivityArticleItemImplCopyWith(_$ActivityArticleItemImpl value,
          $Res Function(_$ActivityArticleItemImpl) then) =
      __$$ActivityArticleItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uri,
      String language,
      bool isDuplicate,
      DateTime dateTimePublished,
      String url,
      String title,
      String body});
}

/// @nodoc
class __$$ActivityArticleItemImplCopyWithImpl<$Res>
    extends _$ActivityArticleItemCopyWithImpl<$Res, _$ActivityArticleItemImpl>
    implements _$$ActivityArticleItemImplCopyWith<$Res> {
  __$$ActivityArticleItemImplCopyWithImpl(_$ActivityArticleItemImpl _value,
      $Res Function(_$ActivityArticleItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? language = null,
    Object? isDuplicate = null,
    Object? dateTimePublished = null,
    Object? url = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_$ActivityArticleItemImpl(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      isDuplicate: null == isDuplicate
          ? _value.isDuplicate
          : isDuplicate // ignore: cast_nullable_to_non_nullable
              as bool,
      dateTimePublished: null == dateTimePublished
          ? _value.dateTimePublished
          : dateTimePublished // ignore: cast_nullable_to_non_nullable
              as DateTime,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ActivityArticleItemImpl implements _ActivityArticleItem {
  _$ActivityArticleItemImpl(
      {required this.uri,
      required this.language,
      required this.isDuplicate,
      required this.dateTimePublished,
      required this.url,
      required this.title,
      required this.body});

  @override
  final String uri;
  @override
  final String language;
  @override
  final bool isDuplicate;
  @override
  final DateTime dateTimePublished;
  @override
  final String url;
  @override
  final String title;
  @override
  final String body;

  @override
  String toString() {
    return 'ActivityArticleItem(uri: $uri, language: $language, isDuplicate: $isDuplicate, dateTimePublished: $dateTimePublished, url: $url, title: $title, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityArticleItemImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.isDuplicate, isDuplicate) ||
                other.isDuplicate == isDuplicate) &&
            (identical(other.dateTimePublished, dateTimePublished) ||
                other.dateTimePublished == dateTimePublished) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uri, language, isDuplicate,
      dateTimePublished, url, title, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityArticleItemImplCopyWith<_$ActivityArticleItemImpl> get copyWith =>
      __$$ActivityArticleItemImplCopyWithImpl<_$ActivityArticleItemImpl>(
          this, _$identity);
}

abstract class _ActivityArticleItem implements ActivityArticleItem {
  factory _ActivityArticleItem(
      {required final String uri,
      required final String language,
      required final bool isDuplicate,
      required final DateTime dateTimePublished,
      required final String url,
      required final String title,
      required final String body}) = _$ActivityArticleItemImpl;

  @override
  String get uri;
  @override
  String get language;
  @override
  bool get isDuplicate;
  @override
  DateTime get dateTimePublished;
  @override
  String get url;
  @override
  String get title;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$ActivityArticleItemImplCopyWith<_$ActivityArticleItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
