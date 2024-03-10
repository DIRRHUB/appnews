// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../data/model/remote/get_events/get_events_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetEventsBodyModelImpl _$$GetEventsBodyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetEventsBodyModelImpl(
      results: (json['results'] as List<dynamic>)
          .map((e) => GetEventsResultModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalResults: json['totalResults'] as int,
      page: json['page'] as int,
      count: json['count'] as int,
      pages: json['pages'] as int,
    );

Map<String, dynamic> _$$GetEventsBodyModelImplToJson(
        _$GetEventsBodyModelImpl instance) =>
    <String, dynamic>{
      'results': instance.results.map((e) => e.toJson()).toList(),
      'totalResults': instance.totalResults,
      'page': instance.page,
      'count': instance.count,
      'pages': instance.pages,
    };
