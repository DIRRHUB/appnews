// ignore_for_file: invalid_annotation_target

import 'package:appnews/core/helper/serializable_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/data/model/remote/suggest_categories/suggest_category_model.freezed.dart';
part '../../../../generated/data/model/remote/suggest_categories/suggest_category_model.g.dart';

@freezed
class SuggestCategoryModel with _$SuggestCategoryModel {
  factory SuggestCategoryModel({
    @JsonKey(name: 'label') required String label,
    @JsonKey(name: 'parentUri') required String parentUri,
  }) = _SuggestCategoryModel;

  factory SuggestCategoryModel.fromJson(Json json) => _$SuggestCategoryModelFromJson(json);
}
