import 'package:appnews/core/base/failure.dart';
import 'package:appnews/core/helper/repository_helper.dart';
import 'package:appnews/data/datasources/remote/news_remote_datasource.dart';
import 'package:appnews/data/model/remote/get_articles/get_articles_model.dart';
import 'package:appnews/data/model/remote/get_events/get_events_model.dart';
import 'package:appnews/data/model/remote/requests/get_articles_request.dart';
import 'package:appnews/data/model/remote/requests/get_events_request.dart';
import 'package:appnews/data/model/remote/requests/stream_of_articles_request.dart';
import 'package:appnews/data/model/remote/requests/suggest_categories_request.dart';
import 'package:appnews/data/model/remote/requests/suggest_locations_request.dart';
import 'package:appnews/data/model/remote/stream_of_articles/recent_activity_articles_model.dart';
import 'package:appnews/data/model/remote/suggest_categories/suggest_category_model.dart';
import 'package:appnews/data/model/remote/suggest_locations/suggest_location_model.dart';
import 'package:appnews/domain/entity/get_articles/get_articles_item.dart';
import 'package:appnews/domain/entity/get_events/get_events_item.dart';
import 'package:appnews/domain/entity/stream_of_articles/recent_activity_articles_item.dart';
import 'package:appnews/domain/entity/suggest_categories/suggest_category_item.dart';
import 'package:appnews/domain/entity/suggest_locations/suggest_location_item.dart';
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

  Future<Either<Failure, GetArticlesItem>> getPopularArticles(GetArticlesRequest request) {
    return execute(() async {
      final GetArticlesModel model = await _datasource.getPopularArticles(request.body);
      return GetArticlesItem.fromModel(model);
    });
  }

  Future<Either<Failure, List<SuggestCategoryItem>>> suggestCategories(SuggestCategoriesRequest request) {
    return execute(() async {
      final List<SuggestCategoryModel> categories = await _datasource.suggestCategories(request.body);
      return categories.map(SuggestCategoryItem.fromModel).toList();
    });
  }

  Future<Either<Failure, List<SuggestLocationItem>>> suggestLocations(SuggestLocationsRequest request) {
    return execute(() async {
      final List<SuggestLocationModel> locations = await _datasource.suggestLocations(request.body);
      return locations.map(SuggestLocationItem.fromModel).toList();
    });
  }

  Future<Either<Failure, GetEventsItem>> getEvents(GetEventRequest request) {
    return execute(() async {
      final GetEventsModel model = await _datasource.getEvents(request.body);
      return GetEventsItem.fromModel(model);
    });
  }
}
