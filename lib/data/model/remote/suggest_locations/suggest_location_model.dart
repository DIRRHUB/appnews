// ignore_for_file: invalid_annotation_target

import 'package:appnews/core/helper/serializable_interface.dart';
import 'package:appnews/data/model/remote/suggest_locations/suggest_location_label_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/data/model/remote/suggest_locations/suggest_location_model.freezed.dart';
part '../../../../generated/data/model/remote/suggest_locations/suggest_location_model.g.dart';

/// The model class for the suggest location
@freezed
class SuggestLocationModel with _$SuggestLocationModel {
  factory SuggestLocationModel({
    @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'label') required SuggestLocationLabelModel suggestLocationLabel,
    @JsonKey(name: 'wikiUri') required String wikiUri,
  }) = _SuggestLocationModel;

  factory SuggestLocationModel.fromJson(Json json) => _$SuggestLocationModelFromJson(json);
}
