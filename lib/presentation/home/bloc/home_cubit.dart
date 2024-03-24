import 'package:appnews/core/enums/home_step_enum.dart';
import 'package:appnews/domain/entity/stream_of_articles/activity_article_item.dart';
import 'package:appnews/presentation/home/bloc/home_state.dart';
import 'package:bloc/bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState.initial());

  void selectArticle(ActivityArticleItem article) async {
    emit(state.copyWith(article: article));
  }

  void setStep(HomeStep step) {
    emit(state.copyWith(step: step));
  }
}
