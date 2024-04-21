// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/entity/suggest_categories/suggest_category_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SuggestCategoryItem {
  String get uri => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get parentUri => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SuggestCategoryItemCopyWith<SuggestCategoryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestCategoryItemCopyWith<$Res> {
  factory $SuggestCategoryItemCopyWith(
          SuggestCategoryItem value, $Res Function(SuggestCategoryItem) then) =
      _$SuggestCategoryItemCopyWithImpl<$Res, SuggestCategoryItem>;
  @useResult
  $Res call({String uri, String label, String parentUri});
}

/// @nodoc
class _$SuggestCategoryItemCopyWithImpl<$Res, $Val extends SuggestCategoryItem>
    implements $SuggestCategoryItemCopyWith<$Res> {
  _$SuggestCategoryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? label = null,
    Object? parentUri = null,
  }) {
    return _then(_value.copyWith(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$SuggestCategoryItemImplCopyWith<$Res>
    implements $SuggestCategoryItemCopyWith<$Res> {
  factory _$$SuggestCategoryItemImplCopyWith(_$SuggestCategoryItemImpl value,
          $Res Function(_$SuggestCategoryItemImpl) then) =
      __$$SuggestCategoryItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uri, String label, String parentUri});
}

/// @nodoc
class __$$SuggestCategoryItemImplCopyWithImpl<$Res>
    extends _$SuggestCategoryItemCopyWithImpl<$Res, _$SuggestCategoryItemImpl>
    implements _$$SuggestCategoryItemImplCopyWith<$Res> {
  __$$SuggestCategoryItemImplCopyWithImpl(_$SuggestCategoryItemImpl _value,
      $Res Function(_$SuggestCategoryItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? label = null,
    Object? parentUri = null,
  }) {
    return _then(_$SuggestCategoryItemImpl(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$SuggestCategoryItemImpl extends _SuggestCategoryItem {
  _$SuggestCategoryItemImpl(
      {required this.uri, required this.label, required this.parentUri})
      : super._();

  @override
  final String uri;
  @override
  final String label;
  @override
  final String parentUri;

  @override
  String toString() {
    return 'SuggestCategoryItem(uri: $uri, label: $label, parentUri: $parentUri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuggestCategoryItemImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.parentUri, parentUri) ||
                other.parentUri == parentUri));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uri, label, parentUri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuggestCategoryItemImplCopyWith<_$SuggestCategoryItemImpl> get copyWith =>
      __$$SuggestCategoryItemImplCopyWithImpl<_$SuggestCategoryItemImpl>(
          this, _$identity);
}

abstract class _SuggestCategoryItem extends SuggestCategoryItem {
  factory _SuggestCategoryItem(
      {required final String uri,
      required final String label,
      required final String parentUri}) = _$SuggestCategoryItemImpl;
  _SuggestCategoryItem._() : super._();

  @override
  String get uri;
  @override
  String get label;
  @override
  String get parentUri;
  @override
  @JsonKey(ignore: true)
  _$$SuggestCategoryItemImplCopyWith<_$SuggestCategoryItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
