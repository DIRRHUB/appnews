// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/entity/get_events/get_events_body_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetEventsBodyItem {
  List<GetEventsResultItem> get results => throw _privateConstructorUsedError;
  int get totalResults => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetEventsBodyItemCopyWith<GetEventsBodyItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetEventsBodyItemCopyWith<$Res> {
  factory $GetEventsBodyItemCopyWith(
          GetEventsBodyItem value, $Res Function(GetEventsBodyItem) then) =
      _$GetEventsBodyItemCopyWithImpl<$Res, GetEventsBodyItem>;
  @useResult
  $Res call(
      {List<GetEventsResultItem> results,
      int totalResults,
      int page,
      int count,
      int pages});
}

/// @nodoc
class _$GetEventsBodyItemCopyWithImpl<$Res, $Val extends GetEventsBodyItem>
    implements $GetEventsBodyItemCopyWith<$Res> {
  _$GetEventsBodyItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? totalResults = null,
    Object? page = null,
    Object? count = null,
    Object? pages = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<GetEventsResultItem>,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetEventsBodyItemImplCopyWith<$Res>
    implements $GetEventsBodyItemCopyWith<$Res> {
  factory _$$GetEventsBodyItemImplCopyWith(_$GetEventsBodyItemImpl value,
          $Res Function(_$GetEventsBodyItemImpl) then) =
      __$$GetEventsBodyItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<GetEventsResultItem> results,
      int totalResults,
      int page,
      int count,
      int pages});
}

/// @nodoc
class __$$GetEventsBodyItemImplCopyWithImpl<$Res>
    extends _$GetEventsBodyItemCopyWithImpl<$Res, _$GetEventsBodyItemImpl>
    implements _$$GetEventsBodyItemImplCopyWith<$Res> {
  __$$GetEventsBodyItemImplCopyWithImpl(_$GetEventsBodyItemImpl _value,
      $Res Function(_$GetEventsBodyItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? totalResults = null,
    Object? page = null,
    Object? count = null,
    Object? pages = null,
  }) {
    return _then(_$GetEventsBodyItemImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<GetEventsResultItem>,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetEventsBodyItemImpl implements _GetEventsBodyItem {
  _$GetEventsBodyItemImpl(
      {required final List<GetEventsResultItem> results,
      required this.totalResults,
      required this.page,
      required this.count,
      required this.pages})
      : _results = results;

  final List<GetEventsResultItem> _results;
  @override
  List<GetEventsResultItem> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final int totalResults;
  @override
  final int page;
  @override
  final int count;
  @override
  final int pages;

  @override
  String toString() {
    return 'GetEventsBodyItem(results: $results, totalResults: $totalResults, page: $page, count: $count, pages: $pages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEventsBodyItemImpl &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.pages, pages) || other.pages == pages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_results),
      totalResults,
      page,
      count,
      pages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEventsBodyItemImplCopyWith<_$GetEventsBodyItemImpl> get copyWith =>
      __$$GetEventsBodyItemImplCopyWithImpl<_$GetEventsBodyItemImpl>(
          this, _$identity);
}

abstract class _GetEventsBodyItem implements GetEventsBodyItem {
  factory _GetEventsBodyItem(
      {required final List<GetEventsResultItem> results,
      required final int totalResults,
      required final int page,
      required final int count,
      required final int pages}) = _$GetEventsBodyItemImpl;

  @override
  List<GetEventsResultItem> get results;
  @override
  int get totalResults;
  @override
  int get page;
  @override
  int get count;
  @override
  int get pages;
  @override
  @JsonKey(ignore: true)
  _$$GetEventsBodyItemImplCopyWith<_$GetEventsBodyItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
