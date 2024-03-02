// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../data/model/remote/suggest_locations/suggest_location_label_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SuggestLocationLabelModel _$SuggestLocationLabelModelFromJson(
    Map<String, dynamic> json) {
  return _SuggestLocationLabelModel.fromJson(json);
}

/// @nodoc
mixin _$SuggestLocationLabelModel {
  @JsonKey(name: 'eng')
  String get eng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuggestLocationLabelModelCopyWith<SuggestLocationLabelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestLocationLabelModelCopyWith<$Res> {
  factory $SuggestLocationLabelModelCopyWith(SuggestLocationLabelModel value,
          $Res Function(SuggestLocationLabelModel) then) =
      _$SuggestLocationLabelModelCopyWithImpl<$Res, SuggestLocationLabelModel>;
  @useResult
  $Res call({@JsonKey(name: 'eng') String eng});
}

/// @nodoc
class _$SuggestLocationLabelModelCopyWithImpl<$Res,
        $Val extends SuggestLocationLabelModel>
    implements $SuggestLocationLabelModelCopyWith<$Res> {
  _$SuggestLocationLabelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eng = null,
  }) {
    return _then(_value.copyWith(
      eng: null == eng
          ? _value.eng
          : eng // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuggestLocationLabelModelImplCopyWith<$Res>
    implements $SuggestLocationLabelModelCopyWith<$Res> {
  factory _$$SuggestLocationLabelModelImplCopyWith(
          _$SuggestLocationLabelModelImpl value,
          $Res Function(_$SuggestLocationLabelModelImpl) then) =
      __$$SuggestLocationLabelModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'eng') String eng});
}

/// @nodoc
class __$$SuggestLocationLabelModelImplCopyWithImpl<$Res>
    extends _$SuggestLocationLabelModelCopyWithImpl<$Res,
        _$SuggestLocationLabelModelImpl>
    implements _$$SuggestLocationLabelModelImplCopyWith<$Res> {
  __$$SuggestLocationLabelModelImplCopyWithImpl(
      _$SuggestLocationLabelModelImpl _value,
      $Res Function(_$SuggestLocationLabelModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eng = null,
  }) {
    return _then(_$SuggestLocationLabelModelImpl(
      eng: null == eng
          ? _value.eng
          : eng // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuggestLocationLabelModelImpl implements _SuggestLocationLabelModel {
  _$SuggestLocationLabelModelImpl({@JsonKey(name: 'eng') required this.eng});

  factory _$SuggestLocationLabelModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuggestLocationLabelModelImplFromJson(json);

  @override
  @JsonKey(name: 'eng')
  final String eng;

  @override
  String toString() {
    return 'SuggestLocationLabelModel(eng: $eng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuggestLocationLabelModelImpl &&
            (identical(other.eng, eng) || other.eng == eng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuggestLocationLabelModelImplCopyWith<_$SuggestLocationLabelModelImpl>
      get copyWith => __$$SuggestLocationLabelModelImplCopyWithImpl<
          _$SuggestLocationLabelModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuggestLocationLabelModelImplToJson(
      this,
    );
  }
}

abstract class _SuggestLocationLabelModel implements SuggestLocationLabelModel {
  factory _SuggestLocationLabelModel(
          {@JsonKey(name: 'eng') required final String eng}) =
      _$SuggestLocationLabelModelImpl;

  factory _SuggestLocationLabelModel.fromJson(Map<String, dynamic> json) =
      _$SuggestLocationLabelModelImpl.fromJson;

  @override
  @JsonKey(name: 'eng')
  String get eng;
  @override
  @JsonKey(ignore: true)
  _$$SuggestLocationLabelModelImplCopyWith<_$SuggestLocationLabelModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
