// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../../data/model/remote/get_articles/get_articles_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetArticlesModel _$GetArticlesModelFromJson(Map<String, dynamic> json) {
  return _GetArticlesModel.fromJson(json);
}

/// @nodoc
mixin _$GetArticlesModel {
  @JsonKey(name: 'articles')
  GetArticlesBodyModel get getArticlesBody =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetArticlesModelCopyWith<GetArticlesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetArticlesModelCopyWith<$Res> {
  factory $GetArticlesModelCopyWith(
          GetArticlesModel value, $Res Function(GetArticlesModel) then) =
      _$GetArticlesModelCopyWithImpl<$Res, GetArticlesModel>;
  @useResult
  $Res call({@JsonKey(name: 'articles') GetArticlesBodyModel getArticlesBody});

  $GetArticlesBodyModelCopyWith<$Res> get getArticlesBody;
}

/// @nodoc
class _$GetArticlesModelCopyWithImpl<$Res, $Val extends GetArticlesModel>
    implements $GetArticlesModelCopyWith<$Res> {
  _$GetArticlesModelCopyWithImpl(this._value, this._then);

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
              as GetArticlesBodyModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetArticlesBodyModelCopyWith<$Res> get getArticlesBody {
    return $GetArticlesBodyModelCopyWith<$Res>(_value.getArticlesBody, (value) {
      return _then(_value.copyWith(getArticlesBody: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetArticlesModelImplCopyWith<$Res>
    implements $GetArticlesModelCopyWith<$Res> {
  factory _$$GetArticlesModelImplCopyWith(_$GetArticlesModelImpl value,
          $Res Function(_$GetArticlesModelImpl) then) =
      __$$GetArticlesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'articles') GetArticlesBodyModel getArticlesBody});

  @override
  $GetArticlesBodyModelCopyWith<$Res> get getArticlesBody;
}

/// @nodoc
class __$$GetArticlesModelImplCopyWithImpl<$Res>
    extends _$GetArticlesModelCopyWithImpl<$Res, _$GetArticlesModelImpl>
    implements _$$GetArticlesModelImplCopyWith<$Res> {
  __$$GetArticlesModelImplCopyWithImpl(_$GetArticlesModelImpl _value,
      $Res Function(_$GetArticlesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getArticlesBody = null,
  }) {
    return _then(_$GetArticlesModelImpl(
      getArticlesBody: null == getArticlesBody
          ? _value.getArticlesBody
          : getArticlesBody // ignore: cast_nullable_to_non_nullable
              as GetArticlesBodyModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetArticlesModelImpl implements _GetArticlesModel {
  _$GetArticlesModelImpl(
      {@JsonKey(name: 'articles') required this.getArticlesBody});

  factory _$GetArticlesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetArticlesModelImplFromJson(json);

  @override
  @JsonKey(name: 'articles')
  final GetArticlesBodyModel getArticlesBody;

  @override
  String toString() {
    return 'GetArticlesModel(getArticlesBody: $getArticlesBody)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetArticlesModelImpl &&
            (identical(other.getArticlesBody, getArticlesBody) ||
                other.getArticlesBody == getArticlesBody));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, getArticlesBody);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetArticlesModelImplCopyWith<_$GetArticlesModelImpl> get copyWith =>
      __$$GetArticlesModelImplCopyWithImpl<_$GetArticlesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetArticlesModelImplToJson(
      this,
    );
  }
}

abstract class _GetArticlesModel implements GetArticlesModel {
  factory _GetArticlesModel(
          {@JsonKey(name: 'articles')
          required final GetArticlesBodyModel getArticlesBody}) =
      _$GetArticlesModelImpl;

  factory _GetArticlesModel.fromJson(Map<String, dynamic> json) =
      _$GetArticlesModelImpl.fromJson;

  @override
  @JsonKey(name: 'articles')
  GetArticlesBodyModel get getArticlesBody;
  @override
  @JsonKey(ignore: true)
  _$$GetArticlesModelImplCopyWith<_$GetArticlesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
