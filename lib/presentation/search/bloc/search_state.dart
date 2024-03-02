import 'package:appnews/core/helper/language_helper.dart';
import 'package:appnews/domain/entity/suggest_categories/suggest_category_item.dart';
import 'package:appnews/domain/entity/suggest_languages/suggest_language_item.dart';
import 'package:appnews/domain/entity/suggest_locations/suggest_location_item.dart';
import 'package:equatable/equatable.dart';

class SearchState extends Equatable {
  const SearchState({
    required this.locations,
    required this.categories,
    required this.languages,
    required this.selectedLocations,
    required this.selectedCategories,
    required this.selectedLanguages,
  });
  final List<SuggestLocationItem> locations;
  final List<SuggestCategoryItem> categories;
  final List<SuggestLanguageItem> languages;
  final List<SuggestLocationItem> selectedLocations;
  final List<SuggestCategoryItem> selectedCategories;
  final List<SuggestLanguageItem> selectedLanguages;

  factory SearchState.initial() {
    return SearchState(
      locations: const [],
      categories: const [],
      languages: LanguageHelper.languages,
      selectedLocations: const [],
      selectedCategories: const [],
      selectedLanguages: const [],
    );
  }

  @override
  List<Object?> get props => [
        locations,
        categories,
        languages,
        selectedLocations,
        selectedCategories,
        selectedLanguages,
      ];

  SearchState copyWith({
    List<SuggestLocationItem>? locations,
    List<SuggestCategoryItem>? categories,
    List<SuggestLanguageItem>? languages,
    List<SuggestLocationItem>? selectedLocations,
    List<SuggestCategoryItem>? selectedCategories,
    List<SuggestLanguageItem>? selectedLanguages,
  }) {
    return SearchState(
      locations: locations ?? this.locations,
      categories: categories ?? this.categories,
      languages: languages ?? this.languages,
      selectedLocations: selectedLocations ?? this.selectedLocations,
      selectedCategories: selectedCategories ?? this.selectedCategories,
      selectedLanguages: selectedLanguages ?? this.selectedLanguages,
    );
  }
}
