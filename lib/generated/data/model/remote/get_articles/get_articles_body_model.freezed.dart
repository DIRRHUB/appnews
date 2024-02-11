// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../data/model/remote/get_articles/get_articles_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetArticlesBodyModel _$GetArticlesBodyModelFromJson(Map<String, dynamic> json) {
  return _GetArticlesBodyModel.fromJson(json);
}

/// @nodoc
mixin _$GetArticlesBodyModel {
  @JsonKey(name: 'totalResults')
  int get totalResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'page')
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'count')
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'pages')
  int get pages => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<ActivityArticleModel> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetArticlesBodyModelCopyWith<GetArticlesBodyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetArticlesBodyModelCopyWith<$Res> {
  factory $GetArticlesBodyModelCopyWith(GetArticlesBodyModel value,
          $Res Function(GetArticlesBodyModel) then) =
      _$GetArticlesBodyModelCopyWithImpl<$Res, GetArticlesBodyModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'totalResults') int totalResults,
      @JsonKey(name: 'page') int page,
      @JsonKey(name: 'count') int count,
      @JsonKey(name: 'pages') int pages,
      @JsonKey(name: 'results') List<ActivityArticleModel> results});
}

/// @nodoc
class _$GetArticlesBodyModelCopyWithImpl<$Res,
        $Val extends GetArticlesBodyModel>
    implements $GetArticlesBodyModelCopyWith<$Res> {
  _$GetArticlesBodyModelCopyWithImpl(this._value, this._then);

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
              as List<ActivityArticleModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetArticlesBodyModelImplCopyWith<$Res>
    implements $GetArticlesBodyModelCopyWith<$Res> {
  factory _$$GetArticlesBodyModelImplCopyWith(_$GetArticlesBodyModelImpl value,
          $Res Function(_$GetArticlesBodyModelImpl) then) =
      __$$GetArticlesBodyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'totalResults') int totalResults,
      @JsonKey(name: 'page') int page,
      @JsonKey(name: 'count') int count,
      @JsonKey(name: 'pages') int pages,
      @JsonKey(name: 'results') List<ActivityArticleModel> results});
}

/// @nodoc
class __$$GetArticlesBodyModelImplCopyWithImpl<$Res>
    extends _$GetArticlesBodyModelCopyWithImpl<$Res, _$GetArticlesBodyModelImpl>
    implements _$$GetArticlesBodyModelImplCopyWith<$Res> {
  __$$GetArticlesBodyModelImplCopyWithImpl(_$GetArticlesBodyModelImpl _value,
      $Res Function(_$GetArticlesBodyModelImpl) _then)
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
    return _then(_$GetArticlesBodyModelImpl(
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
              as List<ActivityArticleModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetArticlesBodyModelImpl implements _GetArticlesBodyModel {
  _$GetArticlesBodyModelImpl(
      {@JsonKey(name: 'totalResults') required this.totalResults,
      @JsonKey(name: 'page') required this.page,
      @JsonKey(name: 'count') required this.count,
      @JsonKey(name: 'pages') required this.pages,
      @JsonKey(name: 'results')
      required final List<ActivityArticleModel> results})
      : _results = results;

  factory _$GetArticlesBodyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetArticlesBodyModelImplFromJson(json);

  @override
  @JsonKey(name: 'totalResults')
  final int totalResults;
  @override
  @JsonKey(name: 'page')
  final int page;
  @override
  @JsonKey(name: 'count')
  final int count;
  @override
  @JsonKey(name: 'pages')
  final int pages;
  final List<ActivityArticleModel> _results;
  @override
  @JsonKey(name: 'results')
  List<ActivityArticleModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'GetArticlesBodyModel(totalResults: $totalResults, page: $page, count: $count, pages: $pages, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetArticlesBodyModelImpl &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalResults, page, count, pages,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetArticlesBodyModelImplCopyWith<_$GetArticlesBodyModelImpl>
      get copyWith =>
          __$$GetArticlesBodyModelImplCopyWithImpl<_$GetArticlesBodyModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetArticlesBodyModelImplToJson(
      this,
    );
  }
}

abstract class _GetArticlesBodyModel implements GetArticlesBodyModel {
  factory _GetArticlesBodyModel(
          {@JsonKey(name: 'totalResults') required final int totalResults,
          @JsonKey(name: 'page') required final int page,
          @JsonKey(name: 'count') required final int count,
          @JsonKey(name: 'pages') required final int pages,
          @JsonKey(name: 'results')
          required final List<ActivityArticleModel> results}) =
      _$GetArticlesBodyModelImpl;

  factory _GetArticlesBodyModel.fromJson(Map<String, dynamic> json) =
      _$GetArticlesBodyModelImpl.fromJson;

  @override
  @JsonKey(name: 'totalResults')
  int get totalResults;
  @override
  @JsonKey(name: 'page')
  int get page;
  @override
  @JsonKey(name: 'count')
  int get count;
  @override
  @JsonKey(name: 'pages')
  int get pages;
  @override
  @JsonKey(name: 'results')
  List<ActivityArticleModel> get results;
  @override
  @JsonKey(ignore: true)
  _$$GetArticlesBodyModelImplCopyWith<_$GetArticlesBodyModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
