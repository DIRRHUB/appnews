// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../data/model/remote/get_events/get_events_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetEventsModel _$GetEventsModelFromJson(Map<String, dynamic> json) {
  return _GetEventsModel.fromJson(json);
}

/// @nodoc
mixin _$GetEventsModel {
  @JsonKey(name: 'events')
  GetEventsBodyModel get events => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetEventsModelCopyWith<GetEventsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetEventsModelCopyWith<$Res> {
  factory $GetEventsModelCopyWith(
          GetEventsModel value, $Res Function(GetEventsModel) then) =
      _$GetEventsModelCopyWithImpl<$Res, GetEventsModel>;
  @useResult
  $Res call({@JsonKey(name: 'events') GetEventsBodyModel events});

  $GetEventsBodyModelCopyWith<$Res> get events;
}

/// @nodoc
class _$GetEventsModelCopyWithImpl<$Res, $Val extends GetEventsModel>
    implements $GetEventsModelCopyWith<$Res> {
  _$GetEventsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_value.copyWith(
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as GetEventsBodyModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetEventsBodyModelCopyWith<$Res> get events {
    return $GetEventsBodyModelCopyWith<$Res>(_value.events, (value) {
      return _then(_value.copyWith(events: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetEventsModelImplCopyWith<$Res>
    implements $GetEventsModelCopyWith<$Res> {
  factory _$$GetEventsModelImplCopyWith(_$GetEventsModelImpl value,
          $Res Function(_$GetEventsModelImpl) then) =
      __$$GetEventsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'events') GetEventsBodyModel events});

  @override
  $GetEventsBodyModelCopyWith<$Res> get events;
}

/// @nodoc
class __$$GetEventsModelImplCopyWithImpl<$Res>
    extends _$GetEventsModelCopyWithImpl<$Res, _$GetEventsModelImpl>
    implements _$$GetEventsModelImplCopyWith<$Res> {
  __$$GetEventsModelImplCopyWithImpl(
      _$GetEventsModelImpl _value, $Res Function(_$GetEventsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$GetEventsModelImpl(
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as GetEventsBodyModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetEventsModelImpl implements _GetEventsModel {
  _$GetEventsModelImpl({@JsonKey(name: 'events') required this.events});

  factory _$GetEventsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetEventsModelImplFromJson(json);

  @override
  @JsonKey(name: 'events')
  final GetEventsBodyModel events;

  @override
  String toString() {
    return 'GetEventsModel(events: $events)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEventsModelImpl &&
            (identical(other.events, events) || other.events == events));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, events);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEventsModelImplCopyWith<_$GetEventsModelImpl> get copyWith =>
      __$$GetEventsModelImplCopyWithImpl<_$GetEventsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetEventsModelImplToJson(
      this,
    );
  }
}

abstract class _GetEventsModel implements GetEventsModel {
  factory _GetEventsModel(
          {@JsonKey(name: 'events') required final GetEventsBodyModel events}) =
      _$GetEventsModelImpl;

  factory _GetEventsModel.fromJson(Map<String, dynamic> json) =
      _$GetEventsModelImpl.fromJson;

  @override
  @JsonKey(name: 'events')
  GetEventsBodyModel get events;
  @override
  @JsonKey(ignore: true)
  _$$GetEventsModelImplCopyWith<_$GetEventsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
