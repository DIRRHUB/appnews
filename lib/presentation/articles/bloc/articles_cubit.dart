import 'package:appnews/core/base/failure.dart';
import 'package:appnews/core/enums/home_article_type_enum.dart';
import 'package:appnews/core/enums/one_status_enum.dart';
import 'package:appnews/data/model/remote/requests/get_articles_request.dart';
import 'package:appnews/data/model/remote/requests/stream_of_articles_request.dart';
import 'package:appnews/domain/entity/get_articles/get_articles_item.dart';
import 'package:appnews/domain/entity/stream_of_articles/recent_activity_articles_item.dart';
import 'package:appnews/domain/repositories/remote/news_remote_repository.dart';
import 'package:appnews/presentation/articles/bloc/articles_state.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

/// The cubit class for the Articles Page
/// It is used to manage the state of the articles page
class ArticlesCubit extends Cubit<ArticlesState> {
  final NewsRemoteRepository _repository;

  ArticlesCubit(this._repository) : super(ArticlesState.initial());

  /// Change the type of the articles
  /// It will get the articles based on the type
  /// [type] is the type of the articles
  /// [HomeArticleType.recent] for the recent articles
  /// [HomeArticleType.popular] for the popular articles
  void selectType(HomeArticleType type) {
    emit(state.copyWith(type: type));
    switch (type) {
      case HomeArticleType.recent:
        getMoreRecentArticles();
        break;
      case HomeArticleType.popular:
        getMorePopularArticles(1);
        break;
    }
  }

  void getMoreRecentArticles() async {
    emit(state.copyWith(status: OneStatus.initial));
    final Either<Failure, RecentActivityActiclesItem> result =
        await _repository.getRecentActivityArticles(StreamOfArticlesRequest());
    result.fold(
      (l) {
        emit(state.copyWith(status: OneStatus.error, errorMessage: l.message));
      },
      (recentActivityActicles) {
        emit(state.copyWith(status: OneStatus.initial, recentActivityActicles: recentActivityActicles));
      },
    );
  }

  void getMorePopularArticles(int page) async {
    emit(state.copyWith(status: OneStatus.loading));
    final Either<Failure, GetArticlesItem> result =
        await _repository.getPopularArticles(GetArticlesRequest(page: page));
    result.fold(
      (l) {
        emit(state.copyWith(status: OneStatus.error, errorMessage: l.message));
      },
      (getArticles) {
        emit(state.copyWith(status: OneStatus.initial, getArticles: getArticles));
      },
    );
  }
}
