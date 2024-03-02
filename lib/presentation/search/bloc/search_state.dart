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
    required this.selectedStartDate,
    required this.selectedEndDate,
    required this.hasStartDate,
    required this.hasEndDate,
  });
  final List<SuggestLocationItem> locations;
  final List<SuggestCategoryItem> categories;
  final List<SuggestLanguageItem> languages;
  final List<SuggestLocationItem> selectedLocations;
  final List<SuggestCategoryItem> selectedCategories;
  final List<SuggestLanguageItem> selectedLanguages;
  final DateTime selectedStartDate;
  final DateTime selectedEndDate;
  final bool hasStartDate;
  final bool hasEndDate;

  factory SearchState.initial() {
    return SearchState(
      locations: const [],
      categories: const [],
      languages: const [],
      selectedLocations: const [],
      selectedCategories: const [],
      selectedLanguages: const [],
      selectedStartDate: DateTime.now(),
      selectedEndDate: DateTime.now(),
      hasStartDate: false,
      hasEndDate: false,
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
        selectedStartDate,
        selectedEndDate,
        hasStartDate,
        hasEndDate,
      ];

  SearchState copyWith({
    List<SuggestLocationItem>? locations,
    List<SuggestCategoryItem>? categories,
    List<SuggestLanguageItem>? languages,
    List<SuggestLocationItem>? selectedLocations,
    List<SuggestCategoryItem>? selectedCategories,
    List<SuggestLanguageItem>? selectedLanguages,
    DateTime? selectedStartDate,
    DateTime? selectedEndDate,
    bool? hasStartDate,
    bool? hasEndDate,
  }) {
    return SearchState(
      locations: locations ?? this.locations,
      categories: categories ?? this.categories,
      languages: languages ?? this.languages,
      selectedLocations: selectedLocations ?? this.selectedLocations,
      selectedCategories: selectedCategories ?? this.selectedCategories,
      selectedLanguages: selectedLanguages ?? this.selectedLanguages,
      selectedStartDate: selectedStartDate ?? this.selectedStartDate,
      selectedEndDate: selectedEndDate ?? this.selectedEndDate,
      hasStartDate: hasStartDate ?? this.hasStartDate,
      hasEndDate: hasEndDate ?? this.hasEndDate,
    );
  }
}
