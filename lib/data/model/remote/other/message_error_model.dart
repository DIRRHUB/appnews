// ignore_for_file: invalid_annotation_target

import 'package:appnews/core/helper/serializable_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/data/model/remote/other/message_error_model.freezed.dart';
part '../../../../generated/data/model/remote/other/message_error_model.g.dart';

/// The model class for the message error response
@freezed
class MessageErrorModel with _$MessageErrorModel {
  factory MessageErrorModel({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'statusCode') required int? statusCode,
    @JsonKey(name: 'error') required String? error,
  }) = _MessageErrorModel;

  factory MessageErrorModel.fromJson(Json json) => _$MessageErrorModelFromJson(json);
}
