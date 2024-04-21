// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/entity/suggest_locations/suggest_location_label_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SuggestLocationLabelItem {
  String get eng => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SuggestLocationLabelItemCopyWith<SuggestLocationLabelItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestLocationLabelItemCopyWith<$Res> {
  factory $SuggestLocationLabelItemCopyWith(SuggestLocationLabelItem value,
          $Res Function(SuggestLocationLabelItem) then) =
      _$SuggestLocationLabelItemCopyWithImpl<$Res, SuggestLocationLabelItem>;
  @useResult
  $Res call({String eng});
}

/// @nodoc
class _$SuggestLocationLabelItemCopyWithImpl<$Res,
        $Val extends SuggestLocationLabelItem>
    implements $SuggestLocationLabelItemCopyWith<$Res> {
  _$SuggestLocationLabelItemCopyWithImpl(this._value, this._then);

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
abstract class _$$SuggestLocationLabelItemImplCopyWith<$Res>
    implements $SuggestLocationLabelItemCopyWith<$Res> {
  factory _$$SuggestLocationLabelItemImplCopyWith(
          _$SuggestLocationLabelItemImpl value,
          $Res Function(_$SuggestLocationLabelItemImpl) then) =
      __$$SuggestLocationLabelItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eng});
}

/// @nodoc
class __$$SuggestLocationLabelItemImplCopyWithImpl<$Res>
    extends _$SuggestLocationLabelItemCopyWithImpl<$Res,
        _$SuggestLocationLabelItemImpl>
    implements _$$SuggestLocationLabelItemImplCopyWith<$Res> {
  __$$SuggestLocationLabelItemImplCopyWithImpl(
      _$SuggestLocationLabelItemImpl _value,
      $Res Function(_$SuggestLocationLabelItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eng = null,
  }) {
    return _then(_$SuggestLocationLabelItemImpl(
      eng: null == eng
          ? _value.eng
          : eng // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuggestLocationLabelItemImpl extends _SuggestLocationLabelItem {
  _$SuggestLocationLabelItemImpl({required this.eng}) : super._();

  @override
  final String eng;

  @override
  String toString() {
    return 'SuggestLocationLabelItem(eng: $eng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuggestLocationLabelItemImpl &&
            (identical(other.eng, eng) || other.eng == eng));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuggestLocationLabelItemImplCopyWith<_$SuggestLocationLabelItemImpl>
      get copyWith => __$$SuggestLocationLabelItemImplCopyWithImpl<
          _$SuggestLocationLabelItemImpl>(this, _$identity);
}

abstract class _SuggestLocationLabelItem extends SuggestLocationLabelItem {
  factory _SuggestLocationLabelItem({required final String eng}) =
      _$SuggestLocationLabelItemImpl;
  _SuggestLocationLabelItem._() : super._();

  @override
  String get eng;
  @override
  @JsonKey(ignore: true)
  _$$SuggestLocationLabelItemImplCopyWith<_$SuggestLocationLabelItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}
