// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/entity/stream_of_articles/recent_activity_articles_body_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecentActivityActiclesBodyItem {
  DateTime get newestUpdate => throw _privateConstructorUsedError;
  DateTime get oldestUpdate => throw _privateConstructorUsedError;
  DateTime get currentTime => throw _privateConstructorUsedError;
  List<ActivityArticleItem> get activities =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecentActivityActiclesBodyItemCopyWith<RecentActivityActiclesBodyItem>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentActivityActiclesBodyItemCopyWith<$Res> {
  factory $RecentActivityActiclesBodyItemCopyWith(
          RecentActivityActiclesBodyItem value,
          $Res Function(RecentActivityActiclesBodyItem) then) =
      _$RecentActivityActiclesBodyItemCopyWithImpl<$Res,
          RecentActivityActiclesBodyItem>;
  @useResult
  $Res call(
      {DateTime newestUpdate,
      DateTime oldestUpdate,
      DateTime currentTime,
      List<ActivityArticleItem> activities});
}

/// @nodoc
class _$RecentActivityActiclesBodyItemCopyWithImpl<$Res,
        $Val extends RecentActivityActiclesBodyItem>
    implements $RecentActivityActiclesBodyItemCopyWith<$Res> {
  _$RecentActivityActiclesBodyItemCopyWithImpl(this._value, this._then);

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
              as DateTime,
      oldestUpdate: null == oldestUpdate
          ? _value.oldestUpdate
          : oldestUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      currentTime: null == currentTime
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      activities: null == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<ActivityArticleItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecentActivityActiclesBodyItemImplCopyWith<$Res>
    implements $RecentActivityActiclesBodyItemCopyWith<$Res> {
  factory _$$RecentActivityActiclesBodyItemImplCopyWith(
          _$RecentActivityActiclesBodyItemImpl value,
          $Res Function(_$RecentActivityActiclesBodyItemImpl) then) =
      __$$RecentActivityActiclesBodyItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime newestUpdate,
      DateTime oldestUpdate,
      DateTime currentTime,
      List<ActivityArticleItem> activities});
}

/// @nodoc
class __$$RecentActivityActiclesBodyItemImplCopyWithImpl<$Res>
    extends _$RecentActivityActiclesBodyItemCopyWithImpl<$Res,
        _$RecentActivityActiclesBodyItemImpl>
    implements _$$RecentActivityActiclesBodyItemImplCopyWith<$Res> {
  __$$RecentActivityActiclesBodyItemImplCopyWithImpl(
      _$RecentActivityActiclesBodyItemImpl _value,
      $Res Function(_$RecentActivityActiclesBodyItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newestUpdate = null,
    Object? oldestUpdate = null,
    Object? currentTime = null,
    Object? activities = null,
  }) {
    return _then(_$RecentActivityActiclesBodyItemImpl(
      newestUpdate: null == newestUpdate
          ? _value.newestUpdate
          : newestUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      oldestUpdate: null == oldestUpdate
          ? _value.oldestUpdate
          : oldestUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      currentTime: null == currentTime
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<ActivityArticleItem>,
    ));
  }
}

/// @nodoc

class _$RecentActivityActiclesBodyItemImpl
    implements _RecentActivityActiclesBodyItem {
  _$RecentActivityActiclesBodyItemImpl(
      {required this.newestUpdate,
      required this.oldestUpdate,
      required this.currentTime,
      required final List<ActivityArticleItem> activities})
      : _activities = activities;

  @override
  final DateTime newestUpdate;
  @override
  final DateTime oldestUpdate;
  @override
  final DateTime currentTime;
  final List<ActivityArticleItem> _activities;
  @override
  List<ActivityArticleItem> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  @override
  String toString() {
    return 'RecentActivityActiclesBodyItem(newestUpdate: $newestUpdate, oldestUpdate: $oldestUpdate, currentTime: $currentTime, activities: $activities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentActivityActiclesBodyItemImpl &&
            (identical(other.newestUpdate, newestUpdate) ||
                other.newestUpdate == newestUpdate) &&
            (identical(other.oldestUpdate, oldestUpdate) ||
                other.oldestUpdate == oldestUpdate) &&
            (identical(other.currentTime, currentTime) ||
                other.currentTime == currentTime) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newestUpdate, oldestUpdate,
      currentTime, const DeepCollectionEquality().hash(_activities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecentActivityActiclesBodyItemImplCopyWith<
          _$RecentActivityActiclesBodyItemImpl>
      get copyWith => __$$RecentActivityActiclesBodyItemImplCopyWithImpl<
          _$RecentActivityActiclesBodyItemImpl>(this, _$identity);
}

abstract class _RecentActivityActiclesBodyItem
    implements RecentActivityActiclesBodyItem {
  factory _RecentActivityActiclesBodyItem(
          {required final DateTime newestUpdate,
          required final DateTime oldestUpdate,
          required final DateTime currentTime,
          required final List<ActivityArticleItem> activities}) =
      _$RecentActivityActiclesBodyItemImpl;

  @override
  DateTime get newestUpdate;
  @override
  DateTime get oldestUpdate;
  @override
  DateTime get currentTime;
  @override
  List<ActivityArticleItem> get activities;
  @override
  @JsonKey(ignore: true)
  _$$RecentActivityActiclesBodyItemImplCopyWith<
          _$RecentActivityActiclesBodyItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}
