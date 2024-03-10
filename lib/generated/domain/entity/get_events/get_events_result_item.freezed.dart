// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/entity/get_events/get_events_result_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetEventsResultItem {
  String get uri => throw _privateConstructorUsedError;
  DateTime get eventDate => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetEventsResultItemCopyWith<GetEventsResultItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetEventsResultItemCopyWith<$Res> {
  factory $GetEventsResultItemCopyWith(
          GetEventsResultItem value, $Res Function(GetEventsResultItem) then) =
      _$GetEventsResultItemCopyWithImpl<$Res, GetEventsResultItem>;
  @useResult
  $Res call(
      {String uri,
      DateTime eventDate,
      String title,
      String summary,
      String category,
      List<String> images});
}

/// @nodoc
class _$GetEventsResultItemCopyWithImpl<$Res, $Val extends GetEventsResultItem>
    implements $GetEventsResultItemCopyWith<$Res> {
  _$GetEventsResultItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? eventDate = null,
    Object? title = null,
    Object? summary = null,
    Object? category = null,
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
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetEventsResultItemImplCopyWith<$Res>
    implements $GetEventsResultItemCopyWith<$Res> {
  factory _$$GetEventsResultItemImplCopyWith(_$GetEventsResultItemImpl value,
          $Res Function(_$GetEventsResultItemImpl) then) =
      __$$GetEventsResultItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uri,
      DateTime eventDate,
      String title,
      String summary,
      String category,
      List<String> images});
}

/// @nodoc
class __$$GetEventsResultItemImplCopyWithImpl<$Res>
    extends _$GetEventsResultItemCopyWithImpl<$Res, _$GetEventsResultItemImpl>
    implements _$$GetEventsResultItemImplCopyWith<$Res> {
  __$$GetEventsResultItemImplCopyWithImpl(_$GetEventsResultItemImpl _value,
      $Res Function(_$GetEventsResultItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? eventDate = null,
    Object? title = null,
    Object? summary = null,
    Object? category = null,
    Object? images = null,
  }) {
    return _then(_$GetEventsResultItemImpl(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      eventDate: null == eventDate
          ? _value.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$GetEventsResultItemImpl implements _GetEventsResultItem {
  _$GetEventsResultItemImpl(
      {required this.uri,
      required this.eventDate,
      required this.title,
      required this.summary,
      required this.category,
      required final List<String> images})
      : _images = images;

  @override
  final String uri;
  @override
  final DateTime eventDate;
  @override
  final String title;
  @override
  final String summary;
  @override
  final String category;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'GetEventsResultItem(uri: $uri, eventDate: $eventDate, title: $title, summary: $summary, category: $category, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEventsResultItemImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.eventDate, eventDate) ||
                other.eventDate == eventDate) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uri, eventDate, title, summary,
      category, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEventsResultItemImplCopyWith<_$GetEventsResultItemImpl> get copyWith =>
      __$$GetEventsResultItemImplCopyWithImpl<_$GetEventsResultItemImpl>(
          this, _$identity);
}

abstract class _GetEventsResultItem implements GetEventsResultItem {
  factory _GetEventsResultItem(
      {required final String uri,
      required final DateTime eventDate,
      required final String title,
      required final String summary,
      required final String category,
      required final List<String> images}) = _$GetEventsResultItemImpl;

  @override
  String get uri;
  @override
  DateTime get eventDate;
  @override
  String get title;
  @override
  String get summary;
  @override
  String get category;
  @override
  List<String> get images;
  @override
  @JsonKey(ignore: true)
  _$$GetEventsResultItemImplCopyWith<_$GetEventsResultItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
