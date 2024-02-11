// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/entity/get_articles/get_articles_body_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetArticlesBodyItem {
  int get totalResults => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  List<ActivityArticleItem> get results => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetArticlesBodyItemCopyWith<GetArticlesBodyItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetArticlesBodyItemCopyWith<$Res> {
  factory $GetArticlesBodyItemCopyWith(
          GetArticlesBodyItem value, $Res Function(GetArticlesBodyItem) then) =
      _$GetArticlesBodyItemCopyWithImpl<$Res, GetArticlesBodyItem>;
  @useResult
  $Res call(
      {int totalResults,
      int page,
      int count,
      int pages,
      List<ActivityArticleItem> results});
}

/// @nodoc
class _$GetArticlesBodyItemCopyWithImpl<$Res, $Val extends GetArticlesBodyItem>
    implements $GetArticlesBodyItemCopyWith<$Res> {
  _$GetArticlesBodyItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalResults = null,
    Object? page = null,
    Object? count = null,
    Object? pages = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
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
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ActivityArticleItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetArticlesBodyItemImplCopyWith<$Res>
    implements $GetArticlesBodyItemCopyWith<$Res> {
  factory _$$GetArticlesBodyItemImplCopyWith(_$GetArticlesBodyItemImpl value,
          $Res Function(_$GetArticlesBodyItemImpl) then) =
      __$$GetArticlesBodyItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalResults,
      int page,
      int count,
      int pages,
      List<ActivityArticleItem> results});
}

/// @nodoc
class __$$GetArticlesBodyItemImplCopyWithImpl<$Res>
    extends _$GetArticlesBodyItemCopyWithImpl<$Res, _$GetArticlesBodyItemImpl>
    implements _$$GetArticlesBodyItemImplCopyWith<$Res> {
  __$$GetArticlesBodyItemImplCopyWithImpl(_$GetArticlesBodyItemImpl _value,
      $Res Function(_$GetArticlesBodyItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalResults = null,
    Object? page = null,
    Object? count = null,
    Object? pages = null,
    Object? results = null,
  }) {
    return _then(_$GetArticlesBodyItemImpl(
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
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ActivityArticleItem>,
    ));
  }
}

/// @nodoc

class _$GetArticlesBodyItemImpl extends _GetArticlesBodyItem {
  _$GetArticlesBodyItemImpl(
      {required this.totalResults,
      required this.page,
      required this.count,
      required this.pages,
      required final List<ActivityArticleItem> results})
      : _results = results,
        super._();

  @override
  final int totalResults;
  @override
  final int page;
  @override
  final int count;
  @override
  final int pages;
  final List<ActivityArticleItem> _results;
  @override
  List<ActivityArticleItem> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'GetArticlesBodyItem(totalResults: $totalResults, page: $page, count: $count, pages: $pages, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetArticlesBodyItemImpl &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalResults, page, count, pages,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetArticlesBodyItemImplCopyWith<_$GetArticlesBodyItemImpl> get copyWith =>
      __$$GetArticlesBodyItemImplCopyWithImpl<_$GetArticlesBodyItemImpl>(
          this, _$identity);
}

abstract class _GetArticlesBodyItem extends GetArticlesBodyItem {
  factory _GetArticlesBodyItem(
          {required final int totalResults,
          required final int page,
          required final int count,
          required final int pages,
          required final List<ActivityArticleItem> results}) =
      _$GetArticlesBodyItemImpl;
  _GetArticlesBodyItem._() : super._();

  @override
  int get totalResults;
  @override
  int get page;
  @override
  int get count;
  @override
  int get pages;
  @override
  List<ActivityArticleItem> get results;
  @override
  @JsonKey(ignore: true)
  _$$GetArticlesBodyItemImplCopyWith<_$GetArticlesBodyItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
