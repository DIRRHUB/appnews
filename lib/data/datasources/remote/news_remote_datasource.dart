import 'package:appnews/core/helper/global_constants.dart';
import 'package:appnews/core/helper/serializable_interface.dart';
import 'package:appnews/data/model/remote/get_articles/get_articles_model.dart';
import 'package:appnews/data/model/remote/get_events/get_events_model.dart';
import 'package:appnews/data/model/remote/stream_of_articles/recent_activity_articles_model.dart';
import 'package:appnews/data/model/remote/suggest_categories/suggest_category_model.dart';
import 'package:appnews/data/model/remote/suggest_locations/suggest_location_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part '../../../generated/data/datasources/remote/news_remote_datasource.g.dart';

@RestApi(baseUrl: GlobalConstants.baseUrl)
abstract class NewsRemoteDatasource {
  factory NewsRemoteDatasource(Dio dio, {String baseUrl}) = _NewsRemoteDatasource;

  @POST('/minuteStreamArticles')
  Future<RecentActivityActiclesModel> getRecentActivityArticles(@Body() Json body);

  @POST('/article/getArticles')
  Future<GetArticlesModel> getPopularArticles(@Body() Json body);

  @POST('suggestCategoriesFast')
  Future<List<SuggestCategoryModel>> suggestCategories(@Body() Json body);

  @POST('suggestLocationsFast')
  Future<List<SuggestLocationModel>> suggestLocations(@Body() Json body);

  @POST('event/getEvents')
  Future<GetEventsModel> getEvents(@Body() Json body);
}
