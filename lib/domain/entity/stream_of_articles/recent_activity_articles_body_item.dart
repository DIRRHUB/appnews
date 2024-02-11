// ignore_for_file: invalid_annotation_target

import 'package:appnews/data/model/remote/stream_of_articles/recent_activity_articles_body_model.dart';
import 'package:appnews/domain/entity/stream_of_articles/activity_article_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/entity/stream_of_articles/recent_activity_articles_body_item.freezed.dart';

@freezed
class RecentActivityActiclesBodyItem with _$RecentActivityActiclesBodyItem {
  factory RecentActivityActiclesBodyItem({
    required DateTime newestUpdate,
    required DateTime oldestUpdate,
    required DateTime currentTime,
    required List<ActivityArticleItem> activities,
  }) = _RecentActivityActiclesBodyItem;

  factory RecentActivityActiclesBodyItem.fromModel(RecentActivityActiclesBodyModel model) {
    return RecentActivityActiclesBodyItem(
      newestUpdate: DateTime.parse(model.newestUpdate).toLocal(),
      oldestUpdate: DateTime.parse(model.oldestUpdate).toLocal(),
      currentTime: DateTime.parse(model.currentTime).toLocal(),
      activities: model.activities.map(ActivityArticleItem.fromModel).toList(),
    );
  }
}