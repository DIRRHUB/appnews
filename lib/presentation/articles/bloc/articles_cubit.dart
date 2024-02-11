import 'package:appnews/core/base/failure.dart';
import 'package:appnews/core/enums/one_status_enum.dart';
import 'package:appnews/data/model/remote/requests/stream_of_articles_request.dart';
import 'package:appnews/domain/entity/stream_of_articles/recent_activity_articles_item.dart';
import 'package:appnews/domain/repositories/remote/news_remote_repository.dart';
import 'package:appnews/presentation/articles/bloc/articles_state.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

class ArticlesCubit extends Cubit<ArticlesState> {
  final NewsRemoteRepository _repository;

  ArticlesCubit(this._repository) : super(ArticlesState.initial());

  void init() async {
    emit(state.copyWith(status: OneStatus.loading));
    final Either<Failure, RecentActivityActiclesItem> result =
        await _repository.getRecentActivityArticles(StreamOfArticlesRequest());
    result.fold(
      (l) {
        emit(state.copyWith(status: OneStatus.error, errorMessage: l.message));
      },
      (r) {
        emit(state.copyWith(status: OneStatus.initial, articles: r.recentActivityActiclesBody.activities));
      },
    );
  }
}
