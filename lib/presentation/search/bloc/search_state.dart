import 'package:appnews/core/enums/one_status_enum.dart';
import 'package:appnews/core/enums/search_step_enum.dart';
import 'package:appnews/domain/entity/get_events/get_events_item.dart';
import 'package:appnews/domain/entity/suggest_categories/suggest_category_item.dart';
import 'package:appnews/domain/entity/suggest_languages/suggest_language_item.dart';
import 'package:appnews/domain/entity/suggest_locations/suggest_location_item.dart';
import 'package:equatable/equatable.dart';

/// State class for the Search Cubit
class SearchState extends Equatable {
  const SearchState({
    required this.status,
    required this.step,
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
    required this.getEvents,
    required this.errorMessage,
    required this.searchRequest,
  });
  final OneStatus status;
  final SearchStep step;
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
  final GetEventsItem getEvents;
  final String errorMessage;
  final String searchRequest;

  factory SearchState.initial() {
    return SearchState(
      status: OneStatus.initial,
      step: SearchStep.initial,
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
      getEvents: GetEventsItem.empty(),
      errorMessage: '',
      searchRequest: '',
    );
  }

  @override
  List<Object?> get props => [
        status,
        step,
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
        getEvents,
        errorMessage,
        searchRequest,
      ];

  SearchState copyWith({
    OneStatus? status,
    SearchStep? step,
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
    GetEventsItem? getEvents,
    String? errorMessage,
    String? searchRequest,
  }) {
    return SearchState(
      status: status ?? this.status,
      step: step ?? this.step,
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
      getEvents: getEvents ?? this.getEvents,
      errorMessage: errorMessage ?? '',
      searchRequest: searchRequest ?? this.searchRequest,
    );
  }
}
