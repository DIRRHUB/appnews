// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../data/model/remote/suggest_categories/suggest_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuggestCategoryModelImpl _$$SuggestCategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SuggestCategoryModelImpl(
      uri: json['uri'] as String,
      label: json['label'] as String,
      parentUri: json['parentUri'] as String,
    );

Map<String, dynamic> _$$SuggestCategoryModelImplToJson(
        _$SuggestCategoryModelImpl instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'label': instance.label,
      'parentUri': instance.parentUri,
    };
