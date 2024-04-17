// ignore_for_file: invalid_annotation_target

import 'package:appnews/data/model/remote/get_events/get_events_model.dart';
import 'package:appnews/domain/entity/get_events/get_events_body_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/entity/get_events/get_events_item.freezed.dart';

/// The entity class for the get events item
@freezed
class GetEventsItem with _$GetEventsItem {
  factory GetEventsItem({
    required GetEventsBodyItem events,
  }) = _GetEventsItem;

  factory GetEventsItem.fromModel(GetEventsModel model) {
    return GetEventsItem(
      events: GetEventsBodyItem.fromModel(model.events),
    );
  }

  factory GetEventsItem.empty() {
    return GetEventsItem(events: GetEventsBodyItem.empty());
  }
}
