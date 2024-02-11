// ignore_for_file: invalid_annotation_target

import 'package:appnews/core/helper/serializable_interface.dart';
import 'package:appnews/data/model/remote/stream_of_articles/activity_article_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/data/model/remote/get_articles/get_articles_body_model.freezed.dart';
part '../../../../generated/data/model/remote/get_articles/get_articles_body_model.g.dart';

@freezed
class GetArticlesBodyModel with _$GetArticlesBodyModel {
  factory GetArticlesBodyModel({
    @JsonKey(name: 'totalResults') required int totalResults,
    @JsonKey(name: 'page') required int page,
    @JsonKey(name: 'count') required int count,
    @JsonKey(name: 'pages') required int pages,
    @JsonKey(name: 'results') required List<ActivityArticleModel> results,
  }) = _GetArticlesBodyModel;

  factory GetArticlesBodyModel.fromJson(Json json) => _$GetArticlesBodyModelFromJson(json);
}
