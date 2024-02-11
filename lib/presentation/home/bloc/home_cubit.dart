import 'package:appnews/domain/entity/stream_of_articles/activity_article_item.dart';
import 'package:appnews/domain/repositories/remote/news_remote_repository.dart';
import 'package:appnews/presentation/home/bloc/home_state.dart';
import 'package:bloc/bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final NewsRemoteRepository _repository;

  HomeCubit(this._repository) : super(HomeState.initial());

  void selectArticle(ActivityArticleItem article) async {
    emit(state.copyWith(article: article));
  }
}
