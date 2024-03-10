// ignore_for_file: invalid_annotation_target

import 'package:appnews/core/helper/serializable_interface.dart';
import 'package:appnews/data/model/remote/get_events/get_events_body_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/data/model/remote/get_events/get_events_model.freezed.dart';
part '../../../../generated/data/model/remote/get_events/get_events_model.g.dart';

@freezed
class GetEventsModel with _$GetEventsModel {
  factory GetEventsModel({
    @JsonKey(name: 'events') required GetEventsBodyModel events,
  }) = _GetEventsModel;

  factory GetEventsModel.fromJson(Json json) => _$GetEventsModelFromJson(json);
}
