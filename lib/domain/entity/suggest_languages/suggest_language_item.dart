// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/domain/entity/suggest_languages/suggest_language_item.freezed.dart';

@freezed
class SuggestLanguageItem with _$SuggestLanguageItem {
  factory SuggestLanguageItem({
    required String label,
    required String code,
  }) = _SuggestLanguageItem;

  SuggestLanguageItem._();

  factory SuggestLanguageItem.empty() {
    return SuggestLanguageItem(
      label: '',
      code: '',
    );
  }
}
