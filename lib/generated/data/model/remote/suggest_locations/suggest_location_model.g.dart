// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../data/model/remote/suggest_locations/suggest_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuggestLocationModelImpl _$$SuggestLocationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SuggestLocationModelImpl(
      type: json['type'] as String,
      suggestLocationLabel: SuggestLocationLabelModel.fromJson(
          json['label'] as Map<String, dynamic>),
      wikiUri: json['wikiUri'] as String,
    );

Map<String, dynamic> _$$SuggestLocationModelImplToJson(
        _$SuggestLocationModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'label': instance.suggestLocationLabel.toJson(),
      'wikiUri': instance.wikiUri,
    };
