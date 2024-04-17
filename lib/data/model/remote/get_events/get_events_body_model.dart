// ignore_for_file: invalid_annotation_target

import 'package:appnews/core/helper/serializable_interface.dart';
import 'package:appnews/data/model/remote/get_events/get_events_result_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/data/model/remote/get_events/get_events_body_model.freezed.dart';
part '../../../../generated/data/model/remote/get_events/get_events_body_model.g.dart';

/// The model class for the body of the get events response
@freezed
class GetEventsBodyModel with _$GetEventsBodyModel {
  factory GetEventsBodyModel({
    @JsonKey(name: 'results') required List<GetEventsResultModel> results,
    @JsonKey(name: 'totalResults') required int totalResults,
    @JsonKey(name: 'page') required int page,
    @JsonKey(name: 'count') required int count,
    @JsonKey(name: 'pages') required int pages,
  }) = _GetEventsBodyModel;

  factory GetEventsBodyModel.fromJson(Json json) => _$GetEventsBodyModelFromJson(json);
}
