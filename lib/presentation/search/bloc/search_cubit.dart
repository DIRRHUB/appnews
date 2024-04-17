import 'package:appnews/core/base/failure.dart';
import 'package:appnews/core/enums/one_status_enum.dart';
import 'package:appnews/core/enums/search_step_enum.dart';
import 'package:appnews/core/helper/language_helper.dart';
import 'package:appnews/core/services/regex_service.dart';
import 'package:appnews/data/model/remote/requests/get_events_request.dart';
import 'package:appnews/data/model/remote/requests/suggest_categories_request.dart';
import 'package:appnews/data/model/remote/requests/suggest_locations_request.dart';
import 'package:appnews/domain/entity/get_events/get_events_item.dart';
import 'package:appnews/domain/entity/suggest_categories/suggest_category_item.dart';
import 'package:appnews/domain/entity/suggest_languages/suggest_language_item.dart';
import 'package:appnews/domain/entity/suggest_locations/suggest_location_item.dart';
import 'package:appnews/domain/repositories/remote/news_remote_repository.dart';
import 'package:appnews/presentation/search/bloc/search_state.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

/// The cubit class for the Search Page
class SearchCubit extends Cubit<SearchState> {
  final NewsRemoteRepository _repository;

  SearchCubit(this._repository) : super(SearchState.initial());

  /// Update the selected location
  void updateLocationSelection(SuggestLocationItem location) {
    final List<SuggestLocationItem> selectedLocations = List.of(state.selectedLocations);
    if (selectedLocations.contains(location)) {
      selectedLocations.remove(location);
    } else {
      selectedLocations.add(location);
    }
    emit(state.copyWith(selectedLocations: selectedLocations));
  }

  /// Update the selected category
  void updateCategorySelection(SuggestCategoryItem category) {
    final List<SuggestCategoryItem> selectedCategories = List.of(state.selectedCategories);
    if (selectedCategories.contains(category)) {
      selectedCategories.remove(category);
    } else {
      selectedCategories.add(category);
    }
    emit(state.copyWith(selectedCategories: selectedCategories));
  }

  /// Update the selected language
  void updateLanguageSelection(SuggestLanguageItem language) {
    final List<SuggestLanguageItem> selectedLanguages = List.of(state.selectedLanguages);
    if (selectedLanguages.contains(language)) {
      selectedLanguages.remove(language);
    } else {
      selectedLanguages.add(language);
    }
    emit(state.copyWith(selectedLanguages: selectedLanguages));
  }

  /// Search for the location
  void searchLocation(String value) async {
    if (value.isEmpty) {
      emit(state.copyWith(locations: []));
      return;
    }
    final Either<Failure, List<SuggestLocationItem>> result =
        await _repository.suggestLocations(SuggestLocationsRequest(text: value));
    result.fold(
      (l) {
        emit(state.copyWith(locations: state.selectedLocations));
      },
      (r) {
        emit(state.copyWith(locations: r));
      },
    );
  }

  /// Search for the category
  void searchCategory(String value) async {
    if (value.isEmpty) {
      emit(state.copyWith(categories: []));
      return;
    }
    final Either<Failure, List<SuggestCategoryItem>> result =
        await _repository.suggestCategories(SuggestCategoriesRequest(text: value));
    result.fold(
      (l) {
        emit(state.copyWith(categories: state.selectedCategories));
      },
      (r) {
        emit(state.copyWith(categories: r));
      },
    );
  }

  /// Search for the language
  void searchLanguage(String value) async {
    if (value.isEmpty) {
      emit(state.copyWith(languages: []));
      return;
    }
    final RegExp regex = RegExp(RegexService.searchByWords(value), caseSensitive: false);
    final List<SuggestLanguageItem> matchingItems = LanguageHelper.languages.where(
      (language) {
        return regex.hasMatch(language.label);
      },
    ).toList();
    emit(state.copyWith(languages: matchingItems));
  }

  //// Select the start date
  void selectStartDate(DateTime date) {
    emit(state.copyWith(selectedStartDate: date, hasStartDate: true));
  }

  /// Select the end date
  void selectEndDate(DateTime date) {
    emit(state.copyWith(selectedEndDate: date, hasEndDate: true));
  }

  /// Clear the selected dates
  void clearDates() {
    emit(
      state.copyWith(
        selectedStartDate: DateTime.now(),
        selectedEndDate: DateTime.now(),
        hasStartDate: false,
        hasEndDate: false,
      ),
    );
  }

  /// Search for the events with the given query and filters
  void search({required String query, int page = 1}) async {
    emit(state.copyWith(status: OneStatus.loading, searchRequest: query));
    final GetEventRequest request = GetEventRequest(
      request: query,
      locations: state.selectedLocations,
      categories: state.selectedCategories,
      languages: state.selectedLanguages,
      startDate: state.hasStartDate ? state.selectedStartDate : null,
      endDate: state.hasEndDate ? state.selectedEndDate : null,
      page: page,
    );
    final Either<Failure, GetEventsItem> result = await _repository.getEvents(request);
    result.fold(
      (l) {
        emit(state.copyWith(status: OneStatus.initial, errorMessage: l.message));
      },
      (r) {
        emit(state.copyWith(status: OneStatus.initial, getEvents: r, step: SearchStep.result));
      },
    );
  }

  /// Change the step of the search page
  void setStep(SearchStep step) {
    emit(state.copyWith(step: step));
  }

  /// Clear the search
  void clearSearch() {
    emit(
      state.copyWith(
        status: OneStatus.initial,
        step: SearchStep.initial,
        locations: [],
        categories: [],
        languages: [],
        selectedCategories: [],
        selectedLanguages: [],
        selectedLocations: [],
        selectedStartDate: DateTime.now(),
        selectedEndDate: DateTime.now(),
        hasStartDate: false,
        hasEndDate: false,
        getEvents: GetEventsItem.empty(),
        searchRequest: '',
      ),
    );
  }
}
