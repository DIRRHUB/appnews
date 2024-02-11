// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../data/model/remote/stream_of_articles/recent_activity_articles_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecentActivityActiclesBodyModelImpl
    _$$RecentActivityActiclesBodyModelImplFromJson(Map<String, dynamic> json) =>
        _$RecentActivityActiclesBodyModelImpl(
          newestUpdate: json['newestUpdate'] as String,
          oldestUpdate: json['oldestUpdate'] as String,
          currentTime: json['currTime'] as String,
          activities: (json['activity'] as List<dynamic>)
              .map((e) =>
                  ActivityArticleModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$RecentActivityActiclesBodyModelImplToJson(
        _$RecentActivityActiclesBodyModelImpl instance) =>
    <String, dynamic>{
      'newestUpdate': instance.newestUpdate,
      'oldestUpdate': instance.oldestUpdate,
      'currTime': instance.currentTime,
      'activity': instance.activities.map((e) => e.toJson()).toList(),
    };
