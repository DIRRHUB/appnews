// ignore_for_file: invalid_annotation_target

import 'package:appnews/core/helper/serializable_interface.dart';
import 'package:appnews/data/model/remote/stream_of_articles/activity_article_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/data/model/remote/stream_of_articles/recent_activity_articles_body_model.freezed.dart';
part '../../../../generated/data/model/remote/stream_of_articles/recent_activity_articles_body_model.g.dart';

/// The model class for the recent activity articles body
@freezed
class RecentActivityActiclesBodyModel with _$RecentActivityActiclesBodyModel {
  factory RecentActivityActiclesBodyModel({
    @JsonKey(name: 'newestUpdate') required String newestUpdate,
    @JsonKey(name: 'oldestUpdate') required String oldestUpdate,
    @JsonKey(name: 'currTime') required String currentTime,
    @JsonKey(name: 'activity') required List<ActivityArticleModel> activities,
  }) = _RecentActivityActiclesBodyModel;

  factory RecentActivityActiclesBodyModel.fromJson(Json json) => _$RecentActivityActiclesBodyModelFromJson(json);
}
