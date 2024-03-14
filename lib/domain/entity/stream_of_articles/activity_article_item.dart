// ignore_for_file: invalid_annotation_target

import 'package:appnews/data/model/remote/stream_of_articles/activity_article_model.dart';
import 'package:appnews/domain/entity/get_events/get_events_result_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/entity/stream_of_articles/activity_article_item.freezed.dart';

@freezed
class ActivityArticleItem with _$ActivityArticleItem {
  factory ActivityArticleItem({
    required String uri,
    required String language,
    required bool isDuplicate,
    required DateTime dateTimePublished,
    required String url,
    required String title,
    required String body,
    required String image,
  }) = _ActivityArticleItem;

  ActivityArticleItem._();

  bool get isEmpty => uri.isEmpty;

  factory ActivityArticleItem.fromModel(ActivityArticleModel model) {
    return ActivityArticleItem(
      uri: model.uri,
      language: model.language,
      isDuplicate: model.isDuplicate,
      dateTimePublished: DateTime.parse(model.dateTimePublished).toLocal(),
      url: model.url,
      title: model.title,
      body: model.body,
      image: model.image ?? '',
    );
  }

  factory ActivityArticleItem.empty() {
    return ActivityArticleItem(
      uri: '',
      language: '',
      isDuplicate: false,
      dateTimePublished: DateTime.now(),
      url: '',
      title: '',
      body: '',
      image: '',
    );
  }

  factory ActivityArticleItem.fromEvent(GetEventsResultItem event) {
    return ActivityArticleItem(
      uri: event.uri,
      language: '',
      isDuplicate: false,
      dateTimePublished: event.eventDate,
      url: '',
      title: event.title,
      body: event.summary,
      image: event.images.isNotEmpty ? event.images.first : '',
    );
  }
}
