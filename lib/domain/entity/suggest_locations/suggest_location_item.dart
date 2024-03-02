// ignore_for_file: invalid_annotation_target

import 'package:appnews/data/model/remote/suggest_locations/suggest_location_model.dart';
import 'package:appnews/domain/entity/suggest_locations/suggest_location_label_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/entity/suggest_locations/suggest_location_item.freezed.dart';

@freezed
class SuggestLocationItem with _$SuggestLocationItem {
  factory SuggestLocationItem({
    required String type,
    required SuggestLocationLabelItem suggestLocationLabel,
  }) = _SuggestLocationItem;

  SuggestLocationItem._();

  factory SuggestLocationItem.fromModel(SuggestLocationModel model) {
    return SuggestLocationItem(
      type: model.type,
      suggestLocationLabel: SuggestLocationLabelItem.fromModel(model.suggestLocationLabel),
    );
  }

  factory SuggestLocationItem.empty() {
    return SuggestLocationItem(
      type: '',
      suggestLocationLabel: SuggestLocationLabelItem.empty(),
    );
  }
}
