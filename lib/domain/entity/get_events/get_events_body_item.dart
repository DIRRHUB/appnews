// ignore_for_file: invalid_annotation_target

import 'package:appnews/data/model/remote/get_events/get_events_body_model.dart';
import 'package:appnews/domain/entity/get_events/get_events_result_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/entity/get_events/get_events_body_item.freezed.dart';

/// The entity class for the get events body item
@freezed
class GetEventsBodyItem with _$GetEventsBodyItem {
  factory GetEventsBodyItem({
    required List<GetEventsResultItem> results,
    required int totalResults,
    required int page,
    required int count,
    required int pages,
  }) = _GetEventsBodyItem;

  factory GetEventsBodyItem.fromModel(GetEventsBodyModel model) {
    return GetEventsBodyItem(
      results: model.results.map(GetEventsResultItem.fromModel).toList(),
      totalResults: model.totalResults,
      page: model.page,
      count: model.count,
      pages: model.pages,
    );
  }

  factory GetEventsBodyItem.empty() {
    return GetEventsBodyItem(
      results: [],
      totalResults: 0,
      page: 0,
      count: 0,
      pages: 0,
    );
  }
}
