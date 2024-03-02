import 'package:appnews/domain/entity/suggest_categories/suggest_category_item.dart';
import 'package:appnews/domain/entity/suggest_languages/suggest_language_item.dart';
import 'package:appnews/domain/entity/suggest_locations/suggest_location_item.dart';
import 'package:appnews/domain/repositories/remote/news_remote_repository.dart';
import 'package:appnews/presentation/search/bloc/search_state.dart';
import 'package:bloc/bloc.dart';

class SearchCubit extends Cubit<SearchState> {
  final NewsRemoteRepository _repository;

  SearchCubit(this._repository) : super(SearchState.initial());

  void selectLocation(SuggestLocationItem location) {
    emit(state.copyWith(selectedLocations: [...state.selectedLocations, location]));
  }

  void selectCategory(SuggestCategoryItem category) {
    emit(state.copyWith(selectedCategories: [...state.selectedCategories, category]));
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
}
