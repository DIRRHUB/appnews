import 'package:appnews/core/helper/global_constants.dart';
import 'package:appnews/core/helper/serializable_interface.dart';
import 'package:appnews/data/model/remote/stream_of_articles/recent_activity_articles_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part '../../../generated/data/datasources/remote/news_remote_datasource.g.dart';

@RestApi(baseUrl: GlobalConstants.baseUrl)
abstract class NewsRemoteDatasource {
  factory NewsRemoteDatasource(Dio dio, {String baseUrl}) = _NewsRemoteDatasource;

  @POST('/minuteStreamArticles')
  Future<RecentActivityActiclesModel> getRecentActivityArticles(@Body() Json body);
}
