// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../data/model/remote/stream_of_articles/recent_activity_articles_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecentActivityActiclesModelImpl _$$RecentActivityActiclesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RecentActivityActiclesModelImpl(
      recentActivityActiclesBody: RecentActivityActiclesBodyModel.fromJson(
          json['recentActivityArticles'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RecentActivityActiclesModelImplToJson(
        _$RecentActivityActiclesModelImpl instance) =>
    <String, dynamic>{
      'recentActivityArticles': instance.recentActivityActiclesBody.toJson(),
    };
