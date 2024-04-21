// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../data/model/remote/suggest_locations/suggest_location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SuggestLocationModel _$SuggestLocationModelFromJson(Map<String, dynamic> json) {
  return _SuggestLocationModel.fromJson(json);
}

/// @nodoc
mixin _$SuggestLocationModel {
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'label')
  SuggestLocationLabelModel get suggestLocationLabel =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'wikiUri')
  String get wikiUri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuggestLocationModelCopyWith<SuggestLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestLocationModelCopyWith<$Res> {
  factory $SuggestLocationModelCopyWith(SuggestLocationModel value,
          $Res Function(SuggestLocationModel) then) =
      _$SuggestLocationModelCopyWithImpl<$Res, SuggestLocationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String type,
      @JsonKey(name: 'label') SuggestLocationLabelModel suggestLocationLabel,
      @JsonKey(name: 'wikiUri') String wikiUri});

  $SuggestLocationLabelModelCopyWith<$Res> get suggestLocationLabel;
}

/// @nodoc
class _$SuggestLocationModelCopyWithImpl<$Res,
        $Val extends SuggestLocationModel>
    implements $SuggestLocationModelCopyWith<$Res> {
  _$SuggestLocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? suggestLocationLabel = null,
    Object? wikiUri = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      suggestLocationLabel: null == suggestLocationLabel
          ? _value.suggestLocationLabel
          : suggestLocationLabel // ignore: cast_nullable_to_non_nullable
              as SuggestLocationLabelModel,
      wikiUri: null == wikiUri
          ? _value.wikiUri
          : wikiUri // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SuggestLocationLabelModelCopyWith<$Res> get suggestLocationLabel {
    return $SuggestLocationLabelModelCopyWith<$Res>(_value.suggestLocationLabel,
        (value) {
      return _then(_value.copyWith(suggestLocationLabel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SuggestLocationModelImplCopyWith<$Res>
    implements $SuggestLocationModelCopyWith<$Res> {
  factory _$$SuggestLocationModelImplCopyWith(_$SuggestLocationModelImpl value,
          $Res Function(_$SuggestLocationModelImpl) then) =
      __$$SuggestLocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String type,
      @JsonKey(name: 'label') SuggestLocationLabelModel suggestLocationLabel,
      @JsonKey(name: 'wikiUri') String wikiUri});

  @override
  $SuggestLocationLabelModelCopyWith<$Res> get suggestLocationLabel;
}

/// @nodoc
class __$$SuggestLocationModelImplCopyWithImpl<$Res>
    extends _$SuggestLocationModelCopyWithImpl<$Res, _$SuggestLocationModelImpl>
    implements _$$SuggestLocationModelImplCopyWith<$Res> {
  __$$SuggestLocationModelImplCopyWithImpl(_$SuggestLocationModelImpl _value,
      $Res Function(_$SuggestLocationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? suggestLocationLabel = null,
    Object? wikiUri = null,
  }) {
    return _then(_$SuggestLocationModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      suggestLocationLabel: null == suggestLocationLabel
          ? _value.suggestLocationLabel
          : suggestLocationLabel // ignore: cast_nullable_to_non_nullable
              as SuggestLocationLabelModel,
      wikiUri: null == wikiUri
          ? _value.wikiUri
          : wikiUri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuggestLocationModelImpl implements _SuggestLocationModel {
  _$SuggestLocationModelImpl(
      {@JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'label') required this.suggestLocationLabel,
      @JsonKey(name: 'wikiUri') required this.wikiUri});

  factory _$SuggestLocationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuggestLocationModelImplFromJson(json);

  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'label')
  final SuggestLocationLabelModel suggestLocationLabel;
  @override
  @JsonKey(name: 'wikiUri')
  final String wikiUri;

  @override
  String toString() {
    return 'SuggestLocationModel(type: $type, suggestLocationLabel: $suggestLocationLabel, wikiUri: $wikiUri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuggestLocationModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.suggestLocationLabel, suggestLocationLabel) ||
                other.suggestLocationLabel == suggestLocationLabel) &&
            (identical(other.wikiUri, wikiUri) || other.wikiUri == wikiUri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, suggestLocationLabel, wikiUri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuggestLocationModelImplCopyWith<_$SuggestLocationModelImpl>
      get copyWith =>
          __$$SuggestLocationModelImplCopyWithImpl<_$SuggestLocationModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuggestLocationModelImplToJson(
      this,
    );
  }
}

abstract class _SuggestLocationModel implements SuggestLocationModel {
  factory _SuggestLocationModel(
          {@JsonKey(name: 'type') required final String type,
          @JsonKey(name: 'label')
          required final SuggestLocationLabelModel suggestLocationLabel,
          @JsonKey(name: 'wikiUri') required final String wikiUri}) =
      _$SuggestLocationModelImpl;

  factory _SuggestLocationModel.fromJson(Map<String, dynamic> json) =
      _$SuggestLocationModelImpl.fromJson;

  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(name: 'label')
  SuggestLocationLabelModel get suggestLocationLabel;
  @override
  @JsonKey(name: 'wikiUri')
  String get wikiUri;
  @override
  @JsonKey(ignore: true)
  _$$SuggestLocationModelImplCopyWith<_$SuggestLocationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
