// ignore_for_file: invalid_annotation_target

import 'package:appnews/core/helper/serializable_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/data/model/remote/suggest_locations/suggest_location_label_model.freezed.dart';
part '../../../../generated/data/model/remote/suggest_locations/suggest_location_label_model.g.dart';

/// The model class for the suggest location label
@freezed
class SuggestLocationLabelModel with _$SuggestLocationLabelModel {
  factory SuggestLocationLabelModel({
    @JsonKey(name: 'eng') required String eng,
  }) = _SuggestLocationLabelModel;

  factory SuggestLocationLabelModel.fromJson(Json json) => _$SuggestLocationLabelModelFromJson(json);
}
