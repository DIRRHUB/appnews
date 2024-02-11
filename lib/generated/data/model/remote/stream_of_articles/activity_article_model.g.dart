// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../data/model/remote/stream_of_articles/activity_article_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityArticleModelImpl _$$ActivityArticleModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ActivityArticleModelImpl(
      uri: json['uri'] as String,
      language: json['lang'] as String,
      isDuplicate: json['isDuplicate'] as bool,
      dateTimePublished: json['dateTimePub'] as String,
      url: json['url'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$$ActivityArticleModelImplToJson(
        _$ActivityArticleModelImpl instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'lang': instance.language,
      'isDuplicate': instance.isDuplicate,
      'dateTimePub': instance.dateTimePublished,
      'url': instance.url,
      'title': instance.title,
      'body': instance.body,
    };
