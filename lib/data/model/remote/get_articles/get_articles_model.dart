// ignore_for_file: invalid_annotation_target

import 'package:appnews/core/helper/serializable_interface.dart';
import 'package:appnews/data/model/remote/get_articles/get_articles_body_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/data/model/remote/get_articles/get_articles_model.freezed.dart';
part '../../../../generated/data/model/remote/get_articles/get_articles_model.g.dart';

/// The model class for the get articles response
@freezed
class GetArticlesModel with _$GetArticlesModel {
  factory GetArticlesModel({
    @JsonKey(name: 'articles') required GetArticlesBodyModel getArticlesBody,
  }) = _GetArticlesModel;

  factory GetArticlesModel.fromJson(Json json) => _$GetArticlesModelFromJson(json);
}
