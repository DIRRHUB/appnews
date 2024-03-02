// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/entity/suggest_languages/suggest_language_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SuggestLanguageItem {
  String get label => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SuggestLanguageItemCopyWith<SuggestLanguageItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestLanguageItemCopyWith<$Res> {
  factory $SuggestLanguageItemCopyWith(
          SuggestLanguageItem value, $Res Function(SuggestLanguageItem) then) =
      _$SuggestLanguageItemCopyWithImpl<$Res, SuggestLanguageItem>;
  @useResult
  $Res call({String label, String code});
}

/// @nodoc
class _$SuggestLanguageItemCopyWithImpl<$Res, $Val extends SuggestLanguageItem>
    implements $SuggestLanguageItemCopyWith<$Res> {
  _$SuggestLanguageItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuggestLanguageItemImplCopyWith<$Res>
    implements $SuggestLanguageItemCopyWith<$Res> {
  factory _$$SuggestLanguageItemImplCopyWith(_$SuggestLanguageItemImpl value,
          $Res Function(_$SuggestLanguageItemImpl) then) =
      __$$SuggestLanguageItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, String code});
}

/// @nodoc
class __$$SuggestLanguageItemImplCopyWithImpl<$Res>
    extends _$SuggestLanguageItemCopyWithImpl<$Res, _$SuggestLanguageItemImpl>
    implements _$$SuggestLanguageItemImplCopyWith<$Res> {
  __$$SuggestLanguageItemImplCopyWithImpl(_$SuggestLanguageItemImpl _value,
      $Res Function(_$SuggestLanguageItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? code = null,
  }) {
    return _then(_$SuggestLanguageItemImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuggestLanguageItemImpl extends _SuggestLanguageItem {
  _$SuggestLanguageItemImpl({required this.label, required this.code})
      : super._();

  @override
  final String label;
  @override
  final String code;

  @override
  String toString() {
    return 'SuggestLanguageItem(label: $label, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuggestLanguageItemImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuggestLanguageItemImplCopyWith<_$SuggestLanguageItemImpl> get copyWith =>
      __$$SuggestLanguageItemImplCopyWithImpl<_$SuggestLanguageItemImpl>(
          this, _$identity);
}

abstract class _SuggestLanguageItem extends SuggestLanguageItem {
  factory _SuggestLanguageItem(
      {required final String label,
      required final String code}) = _$SuggestLanguageItemImpl;
  _SuggestLanguageItem._() : super._();

  @override
  String get label;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$SuggestLanguageItemImplCopyWith<_$SuggestLanguageItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
