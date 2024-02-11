// ignore_for_file: invalid_annotation_target

import 'package:appnews/core/helper/serializable_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/data/model/remote/stream_of_articles/activity_article_model.freezed.dart';
part '../../../../generated/data/model/remote/stream_of_articles/activity_article_model.g.dart';

@freezed
class ActivityArticleModel with _$ActivityArticleModel {
  factory ActivityArticleModel({
    @JsonKey(name: 'uri') required String uri,
    @JsonKey(name: 'lang') required String language,
    @JsonKey(name: 'isDuplicate') required bool isDuplicate,
    @JsonKey(name: 'dateTimePub') required String dateTimePublished,
    @JsonKey(name: 'url') required String url,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'body') required String body,
  }) = _ActivityArticleModel;

  factory ActivityArticleModel.fromJson(Json json) => _$ActivityArticleModelFromJson(json);
}
