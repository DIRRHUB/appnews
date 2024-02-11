// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../data/model/remote/stream_of_articles/recent_activity_articles_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecentActivityActiclesModel _$RecentActivityActiclesModelFromJson(
    Map<String, dynamic> json) {
  return _RecentActivityActiclesModel.fromJson(json);
}

/// @nodoc
mixin _$RecentActivityActiclesModel {
  @JsonKey(name: 'recentActivityArticles')
  RecentActivityActiclesBodyModel get recentActivityActiclesBody =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecentActivityActiclesModelCopyWith<RecentActivityActiclesModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentActivityActiclesModelCopyWith<$Res> {
  factory $RecentActivityActiclesModelCopyWith(
          RecentActivityActiclesModel value,
          $Res Function(RecentActivityActiclesModel) then) =
      _$RecentActivityActiclesModelCopyWithImpl<$Res,
          RecentActivityActiclesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'recentActivityArticles')
      RecentActivityActiclesBodyModel recentActivityActiclesBody});

  $RecentActivityActiclesBodyModelCopyWith<$Res> get recentActivityActiclesBody;
}

/// @nodoc
class _$RecentActivityActiclesModelCopyWithImpl<$Res,
        $Val extends RecentActivityActiclesModel>
    implements $RecentActivityActiclesModelCopyWith<$Res> {
  _$RecentActivityActiclesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recentActivityActiclesBody = null,
  }) {
    return _then(_value.copyWith(
      recentActivityActiclesBody: null == recentActivityActiclesBody
          ? _value.recentActivityActiclesBody
          : recentActivityActiclesBody // ignore: cast_nullable_to_non_nullable
              as RecentActivityActiclesBodyModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RecentActivityActiclesBodyModelCopyWith<$Res>
      get recentActivityActiclesBody {
    return $RecentActivityActiclesBodyModelCopyWith<$Res>(
        _value.recentActivityActiclesBody, (value) {
      return _then(_value.copyWith(recentActivityActiclesBody: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecentActivityActiclesModelImplCopyWith<$Res>
    implements $RecentActivityActiclesModelCopyWith<$Res> {
  factory _$$RecentActivityActiclesModelImplCopyWith(
          _$RecentActivityActiclesModelImpl value,
          $Res Function(_$RecentActivityActiclesModelImpl) then) =
      __$$RecentActivityActiclesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'recentActivityArticles')
      RecentActivityActiclesBodyModel recentActivityActiclesBody});

  @override
  $RecentActivityActiclesBodyModelCopyWith<$Res> get recentActivityActiclesBody;
}

/// @nodoc
class __$$RecentActivityActiclesModelImplCopyWithImpl<$Res>
    extends _$RecentActivityActiclesModelCopyWithImpl<$Res,
        _$RecentActivityActiclesModelImpl>
    implements _$$RecentActivityActiclesModelImplCopyWith<$Res> {
  __$$RecentActivityActiclesModelImplCopyWithImpl(
      _$RecentActivityActiclesModelImpl _value,
      $Res Function(_$RecentActivityActiclesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recentActivityActiclesBody = null,
  }) {
    return _then(_$RecentActivityActiclesModelImpl(
      recentActivityActiclesBody: null == recentActivityActiclesBody
          ? _value.recentActivityActiclesBody
          : recentActivityActiclesBody // ignore: cast_nullable_to_non_nullable
              as RecentActivityActiclesBodyModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecentActivityActiclesModelImpl
    implements _RecentActivityActiclesModel {
  _$RecentActivityActiclesModelImpl(
      {@JsonKey(name: 'recentActivityArticles')
      required this.recentActivityActiclesBody});

  factory _$RecentActivityActiclesModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RecentActivityActiclesModelImplFromJson(json);

  @override
  @JsonKey(name: 'recentActivityArticles')
  final RecentActivityActiclesBodyModel recentActivityActiclesBody;

  @override
  String toString() {
    return 'RecentActivityActiclesModel(recentActivityActiclesBody: $recentActivityActiclesBody)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentActivityActiclesModelImpl &&
            (identical(other.recentActivityActiclesBody,
                    recentActivityActiclesBody) ||
                other.recentActivityActiclesBody ==
                    recentActivityActiclesBody));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, recentActivityActiclesBody);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecentActivityActiclesModelImplCopyWith<_$RecentActivityActiclesModelImpl>
      get copyWith => __$$RecentActivityActiclesModelImplCopyWithImpl<
          _$RecentActivityActiclesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecentActivityActiclesModelImplToJson(
      this,
    );
  }
}

abstract class _RecentActivityActiclesModel
    implements RecentActivityActiclesModel {
  factory _RecentActivityActiclesModel(
      {@JsonKey(name: 'recentActivityArticles')
      required final RecentActivityActiclesBodyModel
          recentActivityActiclesBody}) = _$RecentActivityActiclesModelImpl;

  factory _RecentActivityActiclesModel.fromJson(Map<String, dynamic> json) =
      _$RecentActivityActiclesModelImpl.fromJson;

  @override
  @JsonKey(name: 'recentActivityArticles')
  RecentActivityActiclesBodyModel get recentActivityActiclesBody;
  @override
  @JsonKey(ignore: true)
  _$$RecentActivityActiclesModelImplCopyWith<_$RecentActivityActiclesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
