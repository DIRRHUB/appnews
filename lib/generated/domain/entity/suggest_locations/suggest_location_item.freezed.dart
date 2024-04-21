// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/entity/suggest_locations/suggest_location_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SuggestLocationItem {
  String get type => throw _privateConstructorUsedError;
  SuggestLocationLabelItem get suggestLocationLabel =>
      throw _privateConstructorUsedError;
  String get wikiUri => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SuggestLocationItemCopyWith<SuggestLocationItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestLocationItemCopyWith<$Res> {
  factory $SuggestLocationItemCopyWith(
          SuggestLocationItem value, $Res Function(SuggestLocationItem) then) =
      _$SuggestLocationItemCopyWithImpl<$Res, SuggestLocationItem>;
  @useResult
  $Res call(
      {String type,
      SuggestLocationLabelItem suggestLocationLabel,
      String wikiUri});

  $SuggestLocationLabelItemCopyWith<$Res> get suggestLocationLabel;
}

/// @nodoc
class _$SuggestLocationItemCopyWithImpl<$Res, $Val extends SuggestLocationItem>
    implements $SuggestLocationItemCopyWith<$Res> {
  _$SuggestLocationItemCopyWithImpl(this._value, this._then);

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
              as SuggestLocationLabelItem,
      wikiUri: null == wikiUri
          ? _value.wikiUri
          : wikiUri // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SuggestLocationLabelItemCopyWith<$Res> get suggestLocationLabel {
    return $SuggestLocationLabelItemCopyWith<$Res>(_value.suggestLocationLabel,
        (value) {
      return _then(_value.copyWith(suggestLocationLabel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SuggestLocationItemImplCopyWith<$Res>
    implements $SuggestLocationItemCopyWith<$Res> {
  factory _$$SuggestLocationItemImplCopyWith(_$SuggestLocationItemImpl value,
          $Res Function(_$SuggestLocationItemImpl) then) =
      __$$SuggestLocationItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      SuggestLocationLabelItem suggestLocationLabel,
      String wikiUri});

  @override
  $SuggestLocationLabelItemCopyWith<$Res> get suggestLocationLabel;
}

/// @nodoc
class __$$SuggestLocationItemImplCopyWithImpl<$Res>
    extends _$SuggestLocationItemCopyWithImpl<$Res, _$SuggestLocationItemImpl>
    implements _$$SuggestLocationItemImplCopyWith<$Res> {
  __$$SuggestLocationItemImplCopyWithImpl(_$SuggestLocationItemImpl _value,
      $Res Function(_$SuggestLocationItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? suggestLocationLabel = null,
    Object? wikiUri = null,
  }) {
    return _then(_$SuggestLocationItemImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      suggestLocationLabel: null == suggestLocationLabel
          ? _value.suggestLocationLabel
          : suggestLocationLabel // ignore: cast_nullable_to_non_nullable
              as SuggestLocationLabelItem,
      wikiUri: null == wikiUri
          ? _value.wikiUri
          : wikiUri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuggestLocationItemImpl extends _SuggestLocationItem {
  _$SuggestLocationItemImpl(
      {required this.type,
      required this.suggestLocationLabel,
      required this.wikiUri})
      : super._();

  @override
  final String type;
  @override
  final SuggestLocationLabelItem suggestLocationLabel;
  @override
  final String wikiUri;

  @override
  String toString() {
    return 'SuggestLocationItem(type: $type, suggestLocationLabel: $suggestLocationLabel, wikiUri: $wikiUri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuggestLocationItemImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.suggestLocationLabel, suggestLocationLabel) ||
                other.suggestLocationLabel == suggestLocationLabel) &&
            (identical(other.wikiUri, wikiUri) || other.wikiUri == wikiUri));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, type, suggestLocationLabel, wikiUri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuggestLocationItemImplCopyWith<_$SuggestLocationItemImpl> get copyWith =>
      __$$SuggestLocationItemImplCopyWithImpl<_$SuggestLocationItemImpl>(
          this, _$identity);
}

abstract class _SuggestLocationItem extends SuggestLocationItem {
  factory _SuggestLocationItem(
      {required final String type,
      required final SuggestLocationLabelItem suggestLocationLabel,
      required final String wikiUri}) = _$SuggestLocationItemImpl;
  _SuggestLocationItem._() : super._();

  @override
  String get type;
  @override
  SuggestLocationLabelItem get suggestLocationLabel;
  @override
  String get wikiUri;
  @override
  @JsonKey(ignore: true)
  _$$SuggestLocationItemImplCopyWith<_$SuggestLocationItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
