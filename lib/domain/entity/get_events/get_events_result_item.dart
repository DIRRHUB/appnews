// ignore_for_file: invalid_annotation_target

import 'package:appnews/data/model/remote/get_events/get_events_result_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/entity/get_events/get_events_result_item.freezed.dart';

@freezed
class GetEventsResultItem with _$GetEventsResultItem {
  factory GetEventsResultItem({
    required String uri,
    required DateTime eventDate,
    required String title,
    required String summary,
    required String category,
    required List<String> images,
  }) = _GetEventsResultItem;

  factory GetEventsResultItem.fromModel(GetEventsResultModel model) {
    return GetEventsResultItem(
      uri: model.uri,
      eventDate: DateTime.parse(model.eventDate).toLocal(),
      title: model.title ?? '',
      summary: model.summary ?? '',
      category: model.category ?? '',
      images: model.images,
    );
  }

  factory GetEventsResultItem.empty() {
    return GetEventsResultItem(uri: '', eventDate: DateTime.now(), title: '', summary: '', category: '', images: []);
  }
}
