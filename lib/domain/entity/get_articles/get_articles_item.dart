// ignore_for_file: invalid_annotation_target

import 'package:appnews/data/model/remote/get_articles/get_articles_model.dart';
import 'package:appnews/domain/entity/get_articles/get_articles_body_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/entity/get_articles/get_articles_item.freezed.dart';

@freezed
class GetArticlesItem with _$GetArticlesItem {
  factory GetArticlesItem({
    required GetArticlesBodyItem getArticlesBody,
  }) = _GetArticlesItem;

  factory GetArticlesItem.fromModel(GetArticlesModel model) {
    return GetArticlesItem(
      getArticlesBody: GetArticlesBodyItem.fromModel(model.getArticlesBody),
    );
  }

  factory GetArticlesItem.empty() {
    return GetArticlesItem(
      getArticlesBody: GetArticlesBodyItem.empty(),
    );
  }
}
