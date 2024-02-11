// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../data/model/remote/get_articles/get_articles_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetArticlesBodyModelImpl _$$GetArticlesBodyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetArticlesBodyModelImpl(
      totalResults: json['totalResults'] as int,
      page: json['page'] as int,
      count: json['count'] as int,
      pages: json['pages'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => ActivityArticleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetArticlesBodyModelImplToJson(
        _$GetArticlesBodyModelImpl instance) =>
    <String, dynamic>{
      'totalResults': instance.totalResults,
      'page': instance.page,
      'count': instance.count,
      'pages': instance.pages,
      'results': instance.results.map((e) => e.toJson()).toList(),
    };
