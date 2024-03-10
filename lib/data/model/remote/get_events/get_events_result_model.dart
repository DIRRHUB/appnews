// ignore_for_file: invalid_annotation_target

import 'package:appnews/core/helper/serializable_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/data/model/remote/get_events/get_events_result_model.freezed.dart';
part '../../../../generated/data/model/remote/get_events/get_events_result_model.g.dart';

@freezed
class GetEventsResultModel with _$GetEventsResultModel {
  factory GetEventsResultModel({
    @JsonKey(name: 'uri') required String uri,
    @JsonKey(name: 'eventDate') required String eventDate,
    @JsonKey(name: 'title') required String? title,
    @JsonKey(name: 'summary') required String? summary,
    @JsonKey(name: 'category') required String? category,
    @JsonKey(name: 'images') required List<String> images,
  }) = _GetEventsModel;

  factory GetEventsResultModel.fromJson(Json json) => _$GetEventsResultModelFromJson(json);
}
