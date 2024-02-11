import 'package:appnews/core/base/failure.dart';
import 'package:appnews/core/helper/repository_helper.dart';
import 'package:appnews/data/datasources/remote/news_remote_datasource.dart';
import 'package:appnews/data/model/remote/requests/stream_of_articles_request.dart';
import 'package:appnews/data/model/remote/stream_of_articles/recent_activity_articles_model.dart';
import 'package:appnews/domain/entity/stream_of_articles/recent_activity_articles_item.dart';
import 'package:dartz/dartz.dart';

class NewsRemoteRepository {
  final NewsRemoteDatasource _datasource;

  NewsRemoteRepository(this._datasource);

  Future<Either<Failure, RecentActivityActiclesItem>> getRecentActivityArticles(StreamOfArticlesRequest request) {
    return execute(() async {
      final RecentActivityActiclesModel model = await _datasource.getRecentActivityArticles(request.body);
      return RecentActivityActiclesItem.fromModel(model);
    });
  }
}
