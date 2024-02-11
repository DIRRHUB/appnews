// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../data/model/remote/stream_of_articles/recent_activity_articles_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecentActivityActiclesBodyModel _$RecentActivityActiclesBodyModelFromJson(
    Map<String, dynamic> json) {
  return _RecentActivityActiclesBodyModel.fromJson(json);
}

/// @nodoc
mixin _$RecentActivityActiclesBodyModel {
  @JsonKey(name: 'newestUpdate')
  String get newestUpdate => throw _privateConstructorUsedError;
  @JsonKey(name: 'oldestUpdate')
  String get oldestUpdate => throw _privateConstructorUsedError;
  @JsonKey(name: 'currTime')
  String get currentTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'activity')
  List<ActivityArticleModel> get activities =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecentActivityActiclesBodyModelCopyWith<RecentActivityActiclesBodyModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentActivityActiclesBodyModelCopyWith<$Res> {
  factory $RecentActivityActiclesBodyModelCopyWith(
          RecentActivityActiclesBodyModel value,
          $Res Function(RecentActivityActiclesBodyModel) then) =
      _$RecentActivityActiclesBodyModelCopyWithImpl<$Res,
          RecentActivityActiclesBodyModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'newestUpdate') String newestUpdate,
      @JsonKey(name: 'oldestUpdate') String oldestUpdate,
      @JsonKey(name: 'currTime') String currentTime,
      @JsonKey(name: 'activity') List<ActivityArticleModel> activities});
}

/// @nodoc
class _$RecentActivityActiclesBodyModelCopyWithImpl<$Res,
        $Val extends RecentActivityActiclesBodyModel>
    implements $RecentActivityActiclesBodyModelCopyWith<$Res> {
  _$RecentActivityActiclesBodyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newestUpdate = null,
    Object? oldestUpdate = null,
    Object? currentTime = null,
    Object? activities = null,
  }) {
    return _then(_value.copyWith(
      newestUpdate: null == newestUpdate
          ? _value.newestUpdate
          : newestUpdate // ignore: cast_nullable_to_non_nullable
              as String,
      oldestUpdate: null == oldestUpdate
          ? _value.oldestUpdate
          : oldestUpdate // ignore: cast_nullable_to_non_nullable
              as String,
      currentTime: null == currentTime
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as String,
      activities: null == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<ActivityArticleModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecentActivityActiclesBodyModelImplCopyWith<$Res>
    implements $RecentActivityActiclesBodyModelCopyWith<$Res> {
  factory _$$RecentActivityActiclesBodyModelImplCopyWith(
          _$RecentActivityActiclesBodyModelImpl value,
          $Res Function(_$RecentActivityActiclesBodyModelImpl) then) =
      __$$RecentActivityActiclesBodyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'newestUpdate') String newestUpdate,
      @JsonKey(name: 'oldestUpdate') String oldestUpdate,
      @JsonKey(name: 'currTime') String currentTime,
      @JsonKey(name: 'activity') List<ActivityArticleModel> activities});
}

/// @nodoc
class __$$RecentActivityActiclesBodyModelImplCopyWithImpl<$Res>
    extends _$RecentActivityActiclesBodyModelCopyWithImpl<$Res,
        _$RecentActivityActiclesBodyModelImpl>
    implements _$$RecentActivityActiclesBodyModelImplCopyWith<$Res> {
  __$$RecentActivityActiclesBodyModelImplCopyWithImpl(
      _$RecentActivityActiclesBodyModelImpl _value,
      $Res Function(_$RecentActivityActiclesBodyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newestUpdate = null,
    Object? oldestUpdate = null,
    Object? currentTime = null,
    Object? activities = null,
  }) {
    return _then(_$RecentActivityActiclesBodyModelImpl(
      newestUpdate: null == newestUpdate
          ? _value.newestUpdate
          : newestUpdate // ignore: cast_nullable_to_non_nullable
              as String,
      oldestUpdate: null == oldestUpdate
          ? _value.oldestUpdate
          : oldestUpdate // ignore: cast_nullable_to_non_nullable
              as String,
      currentTime: null == currentTime
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as String,
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<ActivityArticleModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecentActivityActiclesBodyModelImpl
    implements _RecentActivityActiclesBodyModel {
  _$RecentActivityActiclesBodyModelImpl(
      {@JsonKey(name: 'newestUpdate') required this.newestUpdate,
      @JsonKey(name: 'oldestUpdate') required this.oldestUpdate,
      @JsonKey(name: 'currTime') required this.currentTime,
      @JsonKey(name: 'activity')
      required final List<ActivityArticleModel> activities})
      : _activities = activities;

  factory _$RecentActivityActiclesBodyModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RecentActivityActiclesBodyModelImplFromJson(json);

  @override
  @JsonKey(name: 'newestUpdate')
  final String newestUpdate;
  @override
  @JsonKey(name: 'oldestUpdate')
  final String oldestUpdate;
  @override
  @JsonKey(name: 'currTime')
  final String currentTime;
  final List<ActivityArticleModel> _activities;
  @override
  @JsonKey(name: 'activity')
  List<ActivityArticleModel> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  @override
  String toString() {
    return 'RecentActivityActiclesBodyModel(newestUpdate: $newestUpdate, oldestUpdate: $oldestUpdate, currentTime: $currentTime, activities: $activities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentActivityActiclesBodyModelImpl &&
            (identical(other.newestUpdate, newestUpdate) ||
                other.newestUpdate == newestUpdate) &&
            (identical(other.oldestUpdate, oldestUpdate) ||
                other.oldestUpdate == oldestUpdate) &&
            (identical(other.currentTime, currentTime) ||
                other.currentTime == currentTime) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, newestUpdate, oldestUpdate,
      currentTime, const DeepCollectionEquality().hash(_activities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecentActivityActiclesBodyModelImplCopyWith<
          _$RecentActivityActiclesBodyModelImpl>
      get copyWith => __$$RecentActivityActiclesBodyModelImplCopyWithImpl<
          _$RecentActivityActiclesBodyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecentActivityActiclesBodyModelImplToJson(
      this,
    );
  }
}

abstract class _RecentActivityActiclesBodyModel
    implements RecentActivityActiclesBodyModel {
  factory _RecentActivityActiclesBodyModel(
          {@JsonKey(name: 'newestUpdate') required final String newestUpdate,
          @JsonKey(name: 'oldestUpdate') required final String oldestUpdate,
          @JsonKey(name: 'currTime') required final String currentTime,
          @JsonKey(name: 'activity')
          required final List<ActivityArticleModel> activities}) =
      _$RecentActivityActiclesBodyModelImpl;

  factory _RecentActivityActiclesBodyModel.fromJson(Map<String, dynamic> json) =
      _$RecentActivityActiclesBodyModelImpl.fromJson;

  @override
  @JsonKey(name: 'newestUpdate')
  String get newestUpdate;
  @override
  @JsonKey(name: 'oldestUpdate')
  String get oldestUpdate;
  @override
  @JsonKey(name: 'currTime')
  String get currentTime;
  @override
  @JsonKey(name: 'activity')
  List<ActivityArticleModel> get activities;
  @override
  @JsonKey(ignore: true)
  _$$RecentActivityActiclesBodyModelImplCopyWith<
          _$RecentActivityActiclesBodyModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
