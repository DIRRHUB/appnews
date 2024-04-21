// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../data/model/remote/other/message_error_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageErrorModel _$MessageErrorModelFromJson(Map<String, dynamic> json) {
  return _MessageErrorModel.fromJson(json);
}

/// @nodoc
mixin _$MessageErrorModel {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'statusCode')
  int? get statusCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'error')
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageErrorModelCopyWith<MessageErrorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageErrorModelCopyWith<$Res> {
  factory $MessageErrorModelCopyWith(
          MessageErrorModel value, $Res Function(MessageErrorModel) then) =
      _$MessageErrorModelCopyWithImpl<$Res, MessageErrorModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'statusCode') int? statusCode,
      @JsonKey(name: 'error') String? error});
}

/// @nodoc
class _$MessageErrorModelCopyWithImpl<$Res, $Val extends MessageErrorModel>
    implements $MessageErrorModelCopyWith<$Res> {
  _$MessageErrorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? statusCode = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageErrorModelImplCopyWith<$Res>
    implements $MessageErrorModelCopyWith<$Res> {
  factory _$$MessageErrorModelImplCopyWith(_$MessageErrorModelImpl value,
          $Res Function(_$MessageErrorModelImpl) then) =
      __$$MessageErrorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'statusCode') int? statusCode,
      @JsonKey(name: 'error') String? error});
}

/// @nodoc
class __$$MessageErrorModelImplCopyWithImpl<$Res>
    extends _$MessageErrorModelCopyWithImpl<$Res, _$MessageErrorModelImpl>
    implements _$$MessageErrorModelImplCopyWith<$Res> {
  __$$MessageErrorModelImplCopyWithImpl(_$MessageErrorModelImpl _value,
      $Res Function(_$MessageErrorModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? statusCode = freezed,
    Object? error = freezed,
  }) {
    return _then(_$MessageErrorModelImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageErrorModelImpl implements _MessageErrorModel {
  _$MessageErrorModelImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'statusCode') required this.statusCode,
      @JsonKey(name: 'error') required this.error});

  factory _$MessageErrorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageErrorModelImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'statusCode')
  final int? statusCode;
  @override
  @JsonKey(name: 'error')
  final String? error;

  @override
  String toString() {
    return 'MessageErrorModel(message: $message, statusCode: $statusCode, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageErrorModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageErrorModelImplCopyWith<_$MessageErrorModelImpl> get copyWith =>
      __$$MessageErrorModelImplCopyWithImpl<_$MessageErrorModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageErrorModelImplToJson(
      this,
    );
  }
}

abstract class _MessageErrorModel implements MessageErrorModel {
  factory _MessageErrorModel(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'statusCode') required final int? statusCode,
          @JsonKey(name: 'error') required final String? error}) =
      _$MessageErrorModelImpl;

  factory _MessageErrorModel.fromJson(Map<String, dynamic> json) =
      _$MessageErrorModelImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'statusCode')
  int? get statusCode;
  @override
  @JsonKey(name: 'error')
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$MessageErrorModelImplCopyWith<_$MessageErrorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
