import 'package:appnews/core/base/failure.dart';
import 'package:appnews/core/helper/language_helper.dart';
import 'package:appnews/core/services/regex_service.dart';
import 'package:appnews/data/model/remote/requests/suggest_categories_request.dart';
import 'package:appnews/data/model/remote/requests/suggest_locations_request.dart';
import 'package:appnews/domain/entity/suggest_categories/suggest_category_item.dart';
import 'package:appnews/domain/entity/suggest_languages/suggest_language_item.dart';
import 'package:appnews/domain/entity/suggest_locations/suggest_location_item.dart';
import 'package:appnews/domain/repositories/remote/news_remote_repository.dart';
import 'package:appnews/presentation/search/bloc/search_state.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

class SearchCubit extends Cubit<SearchState> {
  final NewsRemoteRepository _repository;

  SearchCubit(this._repository) : super(SearchState.initial());

  void updateLocationSelection(SuggestLocationItem location) {
    final List<SuggestLocationItem> selectedLocations = List.of(state.selectedLocations);
    if (selectedLocations.contains(location)) {
      selectedLocations.remove(location);
    } else {
      selectedLocations.add(location);
    }
    emit(state.copyWith(selectedLocations: selectedLocations));
  }

  void updateCategorySelection(SuggestCategoryItem category) {
    final List<SuggestCategoryItem> selectedCategories = List.of(state.selectedCategories);
    if (selectedCategories.contains(category)) {
      selectedCategories.remove(category);
    } else {
      selectedCategories.add(category);
    }
    emit(state.copyWith(selectedCategories: selectedCategories));
  }

  void updateLanguageSelection(SuggestLanguageItem language) {
    final List<SuggestLanguageItem> selectedLanguages = List.of(state.selectedLanguages);
    if (selectedLanguages.contains(language)) {
      selectedLanguages.remove(language);
    } else {
      selectedLanguages.add(language);
    }
    emit(state.copyWith(selectedLanguages: selectedLanguages));
  }

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

  void selectStartDate(DateTime date) {
    emit(state.copyWith(selectedStartDate: date, hasStartDate: true));
  }

  void selectEndDate(DateTime date) {
    emit(state.copyWith(selectedEndDate: date, hasEndDate: true));
  }

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
}
