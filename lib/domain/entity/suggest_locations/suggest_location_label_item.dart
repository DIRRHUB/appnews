// ignore_for_file: invalid_annotation_target

import 'package:appnews/data/model/remote/suggest_locations/suggest_location_label_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/entity/suggest_locations/suggest_location_label_item.freezed.dart';

@freezed
class SuggestLocationLabelItem with _$SuggestLocationLabelItem {
  factory SuggestLocationLabelItem({
    required String eng,
  }) = _SuggestLocationLabelItem;

  SuggestLocationLabelItem._();

  factory SuggestLocationLabelItem.fromModel(SuggestLocationLabelModel model) {
    return SuggestLocationLabelItem(
      eng: model.eng,
    );
  }

  factory SuggestLocationLabelItem.empty() {
    return SuggestLocationLabelItem(
      eng: '',
    );
  }
}
