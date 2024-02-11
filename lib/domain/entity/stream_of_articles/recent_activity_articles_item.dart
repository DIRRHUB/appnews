// ignore_for_file: invalid_annotation_target

import 'package:appnews/data/model/remote/stream_of_articles/recent_activity_articles_model.dart';
import 'package:appnews/domain/entity/stream_of_articles/recent_activity_articles_body_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/entity/stream_of_articles/recent_activity_articles_item.freezed.dart';

@freezed
class RecentActivityActiclesItem with _$RecentActivityActiclesItem {
  factory RecentActivityActiclesItem({
    required RecentActivityActiclesBodyItem recentActivityActiclesBody,
  }) = _RecentActivityActiclesItem;

  factory RecentActivityActiclesItem.fromModel(RecentActivityActiclesModel model) {
    return RecentActivityActiclesItem(
      recentActivityActiclesBody: RecentActivityActiclesBodyItem.fromModel(model.recentActivityActiclesBody),
    );
  }

  factory RecentActivityActiclesItem.empty() {
    return RecentActivityActiclesItem(
      recentActivityActiclesBody: RecentActivityActiclesBodyItem.empty(),
    );
  }
}
