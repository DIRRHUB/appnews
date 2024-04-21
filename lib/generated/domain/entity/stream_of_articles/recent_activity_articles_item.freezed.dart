// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/entity/stream_of_articles/recent_activity_articles_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecentActivityActiclesItem {
  RecentActivityActiclesBodyItem get recentActivityActiclesBody =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecentActivityActiclesItemCopyWith<RecentActivityActiclesItem>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentActivityActiclesItemCopyWith<$Res> {
  factory $RecentActivityActiclesItemCopyWith(RecentActivityActiclesItem value,
          $Res Function(RecentActivityActiclesItem) then) =
      _$RecentActivityActiclesItemCopyWithImpl<$Res,
          RecentActivityActiclesItem>;
  @useResult
  $Res call({RecentActivityActiclesBodyItem recentActivityActiclesBody});

  $RecentActivityActiclesBodyItemCopyWith<$Res> get recentActivityActiclesBody;
}

/// @nodoc
class _$RecentActivityActiclesItemCopyWithImpl<$Res,
        $Val extends RecentActivityActiclesItem>
    implements $RecentActivityActiclesItemCopyWith<$Res> {
  _$RecentActivityActiclesItemCopyWithImpl(this._value, this._then);

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
              as RecentActivityActiclesBodyItem,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RecentActivityActiclesBodyItemCopyWith<$Res> get recentActivityActiclesBody {
    return $RecentActivityActiclesBodyItemCopyWith<$Res>(
        _value.recentActivityActiclesBody, (value) {
      return _then(_value.copyWith(recentActivityActiclesBody: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecentActivityActiclesItemImplCopyWith<$Res>
    implements $RecentActivityActiclesItemCopyWith<$Res> {
  factory _$$RecentActivityActiclesItemImplCopyWith(
          _$RecentActivityActiclesItemImpl value,
          $Res Function(_$RecentActivityActiclesItemImpl) then) =
      __$$RecentActivityActiclesItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RecentActivityActiclesBodyItem recentActivityActiclesBody});

  @override
  $RecentActivityActiclesBodyItemCopyWith<$Res> get recentActivityActiclesBody;
}

/// @nodoc
class __$$RecentActivityActiclesItemImplCopyWithImpl<$Res>
    extends _$RecentActivityActiclesItemCopyWithImpl<$Res,
        _$RecentActivityActiclesItemImpl>
    implements _$$RecentActivityActiclesItemImplCopyWith<$Res> {
  __$$RecentActivityActiclesItemImplCopyWithImpl(
      _$RecentActivityActiclesItemImpl _value,
      $Res Function(_$RecentActivityActiclesItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recentActivityActiclesBody = null,
  }) {
    return _then(_$RecentActivityActiclesItemImpl(
      recentActivityActiclesBody: null == recentActivityActiclesBody
          ? _value.recentActivityActiclesBody
          : recentActivityActiclesBody // ignore: cast_nullable_to_non_nullable
              as RecentActivityActiclesBodyItem,
    ));
  }
}

/// @nodoc

class _$RecentActivityActiclesItemImpl implements _RecentActivityActiclesItem {
  _$RecentActivityActiclesItemImpl({required this.recentActivityActiclesBody});

  @override
  final RecentActivityActiclesBodyItem recentActivityActiclesBody;

  @override
  String toString() {
    return 'RecentActivityActiclesItem(recentActivityActiclesBody: $recentActivityActiclesBody)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentActivityActiclesItemImpl &&
            (identical(other.recentActivityActiclesBody,
                    recentActivityActiclesBody) ||
                other.recentActivityActiclesBody ==
                    recentActivityActiclesBody));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recentActivityActiclesBody);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecentActivityActiclesItemImplCopyWith<_$RecentActivityActiclesItemImpl>
      get copyWith => __$$RecentActivityActiclesItemImplCopyWithImpl<
          _$RecentActivityActiclesItemImpl>(this, _$identity);
}

abstract class _RecentActivityActiclesItem
    implements RecentActivityActiclesItem {
  factory _RecentActivityActiclesItem(
      {required final RecentActivityActiclesBodyItem
          recentActivityActiclesBody}) = _$RecentActivityActiclesItemImpl;

  @override
  RecentActivityActiclesBodyItem get recentActivityActiclesBody;
  @override
  @JsonKey(ignore: true)
  _$$RecentActivityActiclesItemImplCopyWith<_$RecentActivityActiclesItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}
