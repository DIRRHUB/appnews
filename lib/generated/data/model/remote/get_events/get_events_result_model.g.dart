// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../data/model/remote/get_events/get_events_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetEventsModelImpl _$$GetEventsModelImplFromJson(Map<String, dynamic> json) =>
    _$GetEventsModelImpl(
      uri: json['uri'] as String,
      eventDate: json['eventDate'] as String,
      title: json['title'] as String?,
      summary: json['summary'] as String?,
      category: json['category'] as String?,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$GetEventsModelImplToJson(
        _$GetEventsModelImpl instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'eventDate': instance.eventDate,
      'title': instance.title,
      'summary': instance.summary,
      'category': instance.category,
      'images': instance.images,
    };
