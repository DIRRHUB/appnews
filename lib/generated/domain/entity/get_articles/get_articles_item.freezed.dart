// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/entity/get_articles/get_articles_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetArticlesItem {
  GetArticlesBodyItem get getArticlesBody => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetArticlesItemCopyWith<GetArticlesItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetArticlesItemCopyWith<$Res> {
  factory $GetArticlesItemCopyWith(
          GetArticlesItem value, $Res Function(GetArticlesItem) then) =
      _$GetArticlesItemCopyWithImpl<$Res, GetArticlesItem>;
  @useResult
  $Res call({GetArticlesBodyItem getArticlesBody});

  $GetArticlesBodyItemCopyWith<$Res> get getArticlesBody;
}

/// @nodoc
class _$GetArticlesItemCopyWithImpl<$Res, $Val extends GetArticlesItem>
    implements $GetArticlesItemCopyWith<$Res> {
  _$GetArticlesItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getArticlesBody = null,
  }) {
    return _then(_value.copyWith(
      getArticlesBody: null == getArticlesBody
          ? _value.getArticlesBody
          : getArticlesBody // ignore: cast_nullable_to_non_nullable
              as GetArticlesBodyItem,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetArticlesBodyItemCopyWith<$Res> get getArticlesBody {
    return $GetArticlesBodyItemCopyWith<$Res>(_value.getArticlesBody, (value) {
      return _then(_value.copyWith(getArticlesBody: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetArticlesItemImplCopyWith<$Res>
    implements $GetArticlesItemCopyWith<$Res> {
  factory _$$GetArticlesItemImplCopyWith(_$GetArticlesItemImpl value,
          $Res Function(_$GetArticlesItemImpl) then) =
      __$$GetArticlesItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GetArticlesBodyItem getArticlesBody});

  @override
  $GetArticlesBodyItemCopyWith<$Res> get getArticlesBody;
}

/// @nodoc
class __$$GetArticlesItemImplCopyWithImpl<$Res>
    extends _$GetArticlesItemCopyWithImpl<$Res, _$GetArticlesItemImpl>
    implements _$$GetArticlesItemImplCopyWith<$Res> {
  __$$GetArticlesItemImplCopyWithImpl(
      _$GetArticlesItemImpl _value, $Res Function(_$GetArticlesItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getArticlesBody = null,
  }) {
    return _then(_$GetArticlesItemImpl(
      getArticlesBody: null == getArticlesBody
          ? _value.getArticlesBody
          : getArticlesBody // ignore: cast_nullable_to_non_nullable
              as GetArticlesBodyItem,
    ));
  }
}

/// @nodoc

class _$GetArticlesItemImpl implements _GetArticlesItem {
  _$GetArticlesItemImpl({required this.getArticlesBody});

  @override
  final GetArticlesBodyItem getArticlesBody;

  @override
  String toString() {
    return 'GetArticlesItem(getArticlesBody: $getArticlesBody)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetArticlesItemImpl &&
            (identical(other.getArticlesBody, getArticlesBody) ||
                other.getArticlesBody == getArticlesBody));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getArticlesBody);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetArticlesItemImplCopyWith<_$GetArticlesItemImpl> get copyWith =>
      __$$GetArticlesItemImplCopyWithImpl<_$GetArticlesItemImpl>(
          this, _$identity);
}

abstract class _GetArticlesItem implements GetArticlesItem {
  factory _GetArticlesItem(
          {required final GetArticlesBodyItem getArticlesBody}) =
      _$GetArticlesItemImpl;

  @override
  GetArticlesBodyItem get getArticlesBody;
  @override
  @JsonKey(ignore: true)
  _$$GetArticlesItemImplCopyWith<_$GetArticlesItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
