// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../data/model/remote/get_events/get_events_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetEventsModelImpl _$$GetEventsModelImplFromJson(Map<String, dynamic> json) =>
    _$GetEventsModelImpl(
      events:
          GetEventsBodyModel.fromJson(json['events'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetEventsModelImplToJson(
        _$GetEventsModelImpl instance) =>
    <String, dynamic>{
      'events': instance.events.toJson(),
    };
