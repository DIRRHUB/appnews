// ignore_for_file: invalid_annotation_target

import 'package:appnews/data/model/remote/get_articles/get_articles_body_model.dart';
import 'package:appnews/domain/entity/stream_of_articles/activity_article_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/entity/get_articles/get_articles_body_item.freezed.dart';

@freezed
class GetArticlesBodyItem with _$GetArticlesBodyItem {
  factory GetArticlesBodyItem({
    required int totalResults,
    required int page,
    required int count,
    required int pages,
    required List<ActivityArticleItem> results,
  }) = _GetArticlesBodyItem;

  GetArticlesBodyItem._();

  bool get isEmpty => totalResults == 0;

  factory GetArticlesBodyItem.fromModel(GetArticlesBodyModel model) {
    return GetArticlesBodyItem(
      totalResults: model.totalResults,
      page: model.page,
      count: model.count,
      pages: model.pages,
      results: model.results.map(ActivityArticleItem.fromModel).toList(),
    );
  }

  factory GetArticlesBodyItem.empty() {
    return GetArticlesBodyItem(
      totalResults: 0,
      page: 0,
      count: 0,
      pages: 0,
      results: [],
    );
  }
}
