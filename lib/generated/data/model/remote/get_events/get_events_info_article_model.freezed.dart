// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../data/model/remote/get_events/get_events_info_article_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetEventsInfoArticleModel _$GetEventsInfoArticleModelFromJson(
    Map<String, dynamic> json) {
  return _GetEventsInfoArticleModel.fromJson(json);
}

/// @nodoc
mixin _$GetEventsInfoArticleModel {
  @JsonKey(name: 'uri')
  String get uri => throw _privateConstructorUsedError;
  @JsonKey(name: 'eventDate')
  String get eventDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'summary')
  String? get summary => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  String? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<String> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetEventsInfoArticleModelCopyWith<GetEventsInfoArticleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetEventsInfoArticleModelCopyWith<$Res> {
  factory $GetEventsInfoArticleModelCopyWith(GetEventsInfoArticleModel value,
          $Res Function(GetEventsInfoArticleModel) then) =
      _$GetEventsInfoArticleModelCopyWithImpl<$Res, GetEventsInfoArticleModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'uri') String uri,
      @JsonKey(name: 'eventDate') String eventDate,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'summary') String? summary,
      @JsonKey(name: 'category') String? category,
      @JsonKey(name: 'images') List<String> images});
}

/// @nodoc
class _$GetEventsInfoArticleModelCopyWithImpl<$Res,
        $Val extends GetEventsInfoArticleModel>
    implements $GetEventsInfoArticleModelCopyWith<$Res> {
  _$GetEventsInfoArticleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? eventDate = null,
    Object? title = freezed,
    Object? summary = freezed,
    Object? category = freezed,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      eventDate: null == eventDate
          ? _value.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetEventsInfoArticleModelImplCopyWith<$Res>
    implements $GetEventsInfoArticleModelCopyWith<$Res> {
  factory _$$GetEventsInfoArticleModelImplCopyWith(
          _$GetEventsInfoArticleModelImpl value,
          $Res Function(_$GetEventsInfoArticleModelImpl) then) =
      __$$GetEventsInfoArticleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'uri') String uri,
      @JsonKey(name: 'eventDate') String eventDate,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'summary') String? summary,
      @JsonKey(name: 'category') String? category,
      @JsonKey(name: 'images') List<String> images});
}

/// @nodoc
class __$$GetEventsInfoArticleModelImplCopyWithImpl<$Res>
    extends _$GetEventsInfoArticleModelCopyWithImpl<$Res,
        _$GetEventsInfoArticleModelImpl>
    implements _$$GetEventsInfoArticleModelImplCopyWith<$Res> {
  __$$GetEventsInfoArticleModelImplCopyWithImpl(
      _$GetEventsInfoArticleModelImpl _value,
      $Res Function(_$GetEventsInfoArticleModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? eventDate = null,
    Object? title = freezed,
    Object? summary = freezed,
    Object? category = freezed,
    Object? images = null,
  }) {
    return _then(_$GetEventsInfoArticleModelImpl(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      eventDate: null == eventDate
          ? _value.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetEventsInfoArticleModelImpl implements _GetEventsInfoArticleModel {
  _$GetEventsInfoArticleModelImpl(
      {@JsonKey(name: 'uri') required this.uri,
      @JsonKey(name: 'eventDate') required this.eventDate,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'summary') required this.summary,
      @JsonKey(name: 'category') required this.category,
      @JsonKey(name: 'images') required final List<String> images})
      : _images = images;

  factory _$GetEventsInfoArticleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetEventsInfoArticleModelImplFromJson(json);

  @override
  @JsonKey(name: 'uri')
  final String uri;
  @override
  @JsonKey(name: 'eventDate')
  final String eventDate;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'summary')
  final String? summary;
  @override
  @JsonKey(name: 'category')
  final String? category;
  final List<String> _images;
  @override
  @JsonKey(name: 'images')
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'GetEventsInfoArticleModel(uri: $uri, eventDate: $eventDate, title: $title, summary: $summary, category: $category, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEventsInfoArticleModelImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.eventDate, eventDate) ||
                other.eventDate == eventDate) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uri, eventDate, title, summary,
      category, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEventsInfoArticleModelImplCopyWith<_$GetEventsInfoArticleModelImpl>
      get copyWith => __$$GetEventsInfoArticleModelImplCopyWithImpl<
          _$GetEventsInfoArticleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetEventsInfoArticleModelImplToJson(
      this,
    );
  }
}

abstract class _GetEventsInfoArticleModel implements GetEventsInfoArticleModel {
  factory _GetEventsInfoArticleModel(
          {@JsonKey(name: 'uri') required final String uri,
          @JsonKey(name: 'eventDate') required final String eventDate,
          @JsonKey(name: 'title') required final String? title,
          @JsonKey(name: 'summary') required final String? summary,
          @JsonKey(name: 'category') required final String? category,
          @JsonKey(name: 'images') required final List<String> images}) =
      _$GetEventsInfoArticleModelImpl;

  factory _GetEventsInfoArticleModel.fromJson(Map<String, dynamic> json) =
      _$GetEventsInfoArticleModelImpl.fromJson;

  @override
  @JsonKey(name: 'uri')
  String get uri;
  @override
  @JsonKey(name: 'eventDate')
  String get eventDate;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'summary')
  String? get summary;
  @override
  @JsonKey(name: 'category')
  String? get category;
  @override
  @JsonKey(name: 'images')
  List<String> get images;
  @override
  @JsonKey(ignore: true)
  _$$GetEventsInfoArticleModelImplCopyWith<_$GetEventsInfoArticleModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
