// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../data/model/remote/get_articles/get_articles_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetArticlesModelImpl _$$GetArticlesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetArticlesModelImpl(
      getArticlesBody: GetArticlesBodyModel.fromJson(
          json['articles'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetArticlesModelImplToJson(
        _$GetArticlesModelImpl instance) =>
    <String, dynamic>{
      'articles': instance.getArticlesBody.toJson(),
    };
