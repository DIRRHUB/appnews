// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../data/model/remote/suggest_categories/suggest_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SuggestCategoryModel _$SuggestCategoryModelFromJson(Map<String, dynamic> json) {
  return _SuggestCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$SuggestCategoryModel {
  @JsonKey(name: 'label')
  String get label => throw _privateConstructorUsedError;
  @JsonKey(name: 'parentUri')
  String get parentUri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuggestCategoryModelCopyWith<SuggestCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestCategoryModelCopyWith<$Res> {
  factory $SuggestCategoryModelCopyWith(SuggestCategoryModel value,
          $Res Function(SuggestCategoryModel) then) =
      _$SuggestCategoryModelCopyWithImpl<$Res, SuggestCategoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'label') String label,
      @JsonKey(name: 'parentUri') String parentUri});
}

/// @nodoc
class _$SuggestCategoryModelCopyWithImpl<$Res,
        $Val extends SuggestCategoryModel>
    implements $SuggestCategoryModelCopyWith<$Res> {
  _$SuggestCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? parentUri = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      parentUri: null == parentUri
          ? _value.parentUri
          : parentUri // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuggestCategoryModelImplCopyWith<$Res>
    implements $SuggestCategoryModelCopyWith<$Res> {
  factory _$$SuggestCategoryModelImplCopyWith(_$SuggestCategoryModelImpl value,
          $Res Function(_$SuggestCategoryModelImpl) then) =
      __$$SuggestCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'label') String label,
      @JsonKey(name: 'parentUri') String parentUri});
}

/// @nodoc
class __$$SuggestCategoryModelImplCopyWithImpl<$Res>
    extends _$SuggestCategoryModelCopyWithImpl<$Res, _$SuggestCategoryModelImpl>
    implements _$$SuggestCategoryModelImplCopyWith<$Res> {
  __$$SuggestCategoryModelImplCopyWithImpl(_$SuggestCategoryModelImpl _value,
      $Res Function(_$SuggestCategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? parentUri = null,
  }) {
    return _then(_$SuggestCategoryModelImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      parentUri: null == parentUri
          ? _value.parentUri
          : parentUri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuggestCategoryModelImpl implements _SuggestCategoryModel {
  _$SuggestCategoryModelImpl(
      {@JsonKey(name: 'label') required this.label,
      @JsonKey(name: 'parentUri') required this.parentUri});

  factory _$SuggestCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuggestCategoryModelImplFromJson(json);

  @override
  @JsonKey(name: 'label')
  final String label;
  @override
  @JsonKey(name: 'parentUri')
  final String parentUri;

  @override
  String toString() {
    return 'SuggestCategoryModel(label: $label, parentUri: $parentUri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuggestCategoryModelImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.parentUri, parentUri) ||
                other.parentUri == parentUri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label, parentUri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuggestCategoryModelImplCopyWith<_$SuggestCategoryModelImpl>
      get copyWith =>
          __$$SuggestCategoryModelImplCopyWithImpl<_$SuggestCategoryModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuggestCategoryModelImplToJson(
      this,
    );
  }
}

abstract class _SuggestCategoryModel implements SuggestCategoryModel {
  factory _SuggestCategoryModel(
          {@JsonKey(name: 'label') required final String label,
          @JsonKey(name: 'parentUri') required final String parentUri}) =
      _$SuggestCategoryModelImpl;

  factory _SuggestCategoryModel.fromJson(Map<String, dynamic> json) =
      _$SuggestCategoryModelImpl.fromJson;

  @override
  @JsonKey(name: 'label')
  String get label;
  @override
  @JsonKey(name: 'parentUri')
  String get parentUri;
  @override
  @JsonKey(ignore: true)
  _$$SuggestCategoryModelImplCopyWith<_$SuggestCategoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
