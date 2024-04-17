// ignore_for_file: invalid_annotation_target

import 'package:appnews/core/helper/serializable_interface.dart';
import 'package:appnews/data/model/remote/stream_of_articles/recent_activity_articles_body_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/data/model/remote/stream_of_articles/recent_activity_articles_model.freezed.dart';
part '../../../../generated/data/model/remote/stream_of_articles/recent_activity_articles_model.g.dart';

/// The model class for the recent activity articles
@freezed
class RecentActivityActiclesModel with _$RecentActivityActiclesModel {
  factory RecentActivityActiclesModel({
    @JsonKey(name: 'recentActivityArticles') required RecentActivityActiclesBodyModel recentActivityActiclesBody,
  }) = _RecentActivityActiclesModel;

  factory RecentActivityActiclesModel.fromJson(Json json) => _$RecentActivityActiclesModelFromJson(json);
}
