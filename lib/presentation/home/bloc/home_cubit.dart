import 'package:appnews/core/enums/home_step_enum.dart';
import 'package:appnews/domain/entity/stream_of_articles/activity_article_item.dart';
import 'package:appnews/presentation/home/bloc/home_state.dart';
import 'package:bloc/bloc.dart';

/// The cubit class for the Home Page
class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState.initial());

  /// Change the selected article
  void selectArticle(ActivityArticleItem article) async {
    emit(state.copyWith(article: article));
  }

  /// Change the step of the home page
  /// [HomeStep.home] for the home page
  /// [HomeStep.search] for the search page
  void setStep(HomeStep step) {
    emit(state.copyWith(step: step));
  }
}
