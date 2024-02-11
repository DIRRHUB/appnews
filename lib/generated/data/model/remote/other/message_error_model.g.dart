// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../../data/model/remote/other/message_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageErrorModelImpl _$$MessageErrorModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageErrorModelImpl(
      message: json['message'] as String?,
      statusCode: json['statusCode'] as int?,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$MessageErrorModelImplToJson(
        _$MessageErrorModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'statusCode': instance.statusCode,
      'error': instance.error,
    };
