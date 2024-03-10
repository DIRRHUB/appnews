// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../data/model/remote/get_events/get_events_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetEventsBodyModel _$GetEventsBodyModelFromJson(Map<String, dynamic> json) {
  return _GetEventsBodyModel.fromJson(json);
}

/// @nodoc
mixin _$GetEventsBodyModel {
  @JsonKey(name: 'results')
  List<GetEventsResultModel> get results => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalResults')
  int get totalResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'page')
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'count')
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'pages')
  int get pages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetEventsBodyModelCopyWith<GetEventsBodyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetEventsBodyModelCopyWith<$Res> {
  factory $GetEventsBodyModelCopyWith(
          GetEventsBodyModel value, $Res Function(GetEventsBodyModel) then) =
      _$GetEventsBodyModelCopyWithImpl<$Res, GetEventsBodyModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'results') List<GetEventsResultModel> results,
      @JsonKey(name: 'totalResults') int totalResults,
      @JsonKey(name: 'page') int page,
      @JsonKey(name: 'count') int count,
      @JsonKey(name: 'pages') int pages});
}

/// @nodoc
class _$GetEventsBodyModelCopyWithImpl<$Res, $Val extends GetEventsBodyModel>
    implements $GetEventsBodyModelCopyWith<$Res> {
  _$GetEventsBodyModelCopyWithImpl(this._value, this._then);

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
              as List<GetEventsResultModel>,
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
abstract class _$$GetEventsBodyModelImplCopyWith<$Res>
    implements $GetEventsBodyModelCopyWith<$Res> {
  factory _$$GetEventsBodyModelImplCopyWith(_$GetEventsBodyModelImpl value,
          $Res Function(_$GetEventsBodyModelImpl) then) =
      __$$GetEventsBodyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'results') List<GetEventsResultModel> results,
      @JsonKey(name: 'totalResults') int totalResults,
      @JsonKey(name: 'page') int page,
      @JsonKey(name: 'count') int count,
      @JsonKey(name: 'pages') int pages});
}

/// @nodoc
class __$$GetEventsBodyModelImplCopyWithImpl<$Res>
    extends _$GetEventsBodyModelCopyWithImpl<$Res, _$GetEventsBodyModelImpl>
    implements _$$GetEventsBodyModelImplCopyWith<$Res> {
  __$$GetEventsBodyModelImplCopyWithImpl(_$GetEventsBodyModelImpl _value,
      $Res Function(_$GetEventsBodyModelImpl) _then)
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
    return _then(_$GetEventsBodyModelImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<GetEventsResultModel>,
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
@JsonSerializable()
class _$GetEventsBodyModelImpl implements _GetEventsBodyModel {
  _$GetEventsBodyModelImpl(
      {@JsonKey(name: 'results')
      required final List<GetEventsResultModel> results,
      @JsonKey(name: 'totalResults') required this.totalResults,
      @JsonKey(name: 'page') required this.page,
      @JsonKey(name: 'count') required this.count,
      @JsonKey(name: 'pages') required this.pages})
      : _results = results;

  factory _$GetEventsBodyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetEventsBodyModelImplFromJson(json);

  final List<GetEventsResultModel> _results;
  @override
  @JsonKey(name: 'results')
  List<GetEventsResultModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

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

  @override
  String toString() {
    return 'GetEventsBodyModel(results: $results, totalResults: $totalResults, page: $page, count: $count, pages: $pages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEventsBodyModelImpl &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.pages, pages) || other.pages == pages));
  }

  @JsonKey(ignore: true)
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
  _$$GetEventsBodyModelImplCopyWith<_$GetEventsBodyModelImpl> get copyWith =>
      __$$GetEventsBodyModelImplCopyWithImpl<_$GetEventsBodyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetEventsBodyModelImplToJson(
      this,
    );
  }
}

abstract class _GetEventsBodyModel implements GetEventsBodyModel {
  factory _GetEventsBodyModel(
          {@JsonKey(name: 'results')
          required final List<GetEventsResultModel> results,
          @JsonKey(name: 'totalResults') required final int totalResults,
          @JsonKey(name: 'page') required final int page,
          @JsonKey(name: 'count') required final int count,
          @JsonKey(name: 'pages') required final int pages}) =
      _$GetEventsBodyModelImpl;

  factory _GetEventsBodyModel.fromJson(Map<String, dynamic> json) =
      _$GetEventsBodyModelImpl.fromJson;

  @override
  @JsonKey(name: 'results')
  List<GetEventsResultModel> get results;
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
  @JsonKey(ignore: true)
  _$$GetEventsBodyModelImplCopyWith<_$GetEventsBodyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
