// ignore_for_file: invalid_annotation_target

import 'package:appnews/data/model/remote/suggest_categories/suggest_category_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/entity/suggest_categories/suggest_category_item.freezed.dart';

/// The entity class for the suggest category item
@freezed
class SuggestCategoryItem with _$SuggestCategoryItem {
  factory SuggestCategoryItem({
    required String uri,
    required String label,
    required String parentUri,
  }) = _SuggestCategoryItem;

  SuggestCategoryItem._();

  factory SuggestCategoryItem.fromModel(SuggestCategoryModel model) {
    return SuggestCategoryItem(
      uri: model.uri,
      label: model.label,
      parentUri: model.parentUri,
    );
  }

  factory SuggestCategoryItem.empty() {
    return SuggestCategoryItem(
      uri: '',
      label: '',
      parentUri: '',
    );
  }

  String getFormattedLabel() {
    return label.replaceAll('/', ' ').replaceAll('dmoz', '').replaceAll('news', '');
  }
}
